$ErrorActionPreference = "Stop"

$root = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
Set-Location $root

function Strip-MarkdownCode {
    param([string]$Text)

    $withoutFences = [regex]::Replace($Text, '(?s)```.*?```', "")
    return [regex]::Replace($withoutFences, '`[^`]*`', "")
}

$issues = New-Object System.Collections.Generic.List[string]

$doubleMarkdown = @(Get-ChildItem -Recurse -File -Filter "*.md.md")
foreach ($file in $doubleMarkdown) {
    $issues.Add("Double markdown extension: $($file.FullName.Substring($root.Length + 1))")
}

$markdownPdf = @(Get-ChildItem -Recurse -File | Where-Object { $_.Name -like "*.md.pdf" })
foreach ($file in $markdownPdf) {
    $issues.Add("Double pdf extension: $($file.FullName.Substring($root.Length + 1))")
}

$typoFolders = @(Get-ChildItem -Recurse -Directory | Where-Object { $_.Name -eq "M01_Intoduction" })
foreach ($folder in $typoFolders) {
    $issues.Add("Typo folder remains: $($folder.FullName.Substring($root.Length + 1))")
}

$markdownFiles = @(Get-ChildItem -Recurse -File -Filter "*.md" | Where-Object { $_.FullName -notmatch "\\.git\\" })
$noteNames = @{}
foreach ($file in $markdownFiles) {
    $noteNames[$file.BaseName.ToLowerInvariant()] = $file.FullName.Substring($root.Length + 1)
}

$imageNames = @{}
Get-ChildItem -Recurse -File -Include "*.png","*.jpg","*.jpeg","*.gif" | ForEach-Object {
    $imageNames[$_.Name.ToLowerInvariant()] = $_.FullName.Substring($root.Length + 1)
}

foreach ($file in $markdownFiles) {
    $relativePath = $file.FullName.Substring($root.Length + 1)
    $text = Strip-MarkdownCode ([System.IO.File]::ReadAllText($file.FullName))

    foreach ($match in [regex]::Matches($text, "(?<!\!)\[\[([^\]]+)\]\]")) {
        $target = (($match.Groups[1].Value -split "[#|]")[0]).Trim()
        if ($target -and -not $noteNames.ContainsKey($target.ToLowerInvariant())) {
            $issues.Add("Missing wikilink target in ${relativePath}: ${target}")
        }
    }

    foreach ($match in [regex]::Matches($text, "\!\[\[([^\]]+)\]\]")) {
        $target = (($match.Groups[1].Value -split "[#|]")[0]).Trim()
        if ($target -and -not $imageNames.ContainsKey($target.ToLowerInvariant())) {
            $issues.Add("Missing image embed in ${relativePath}: ${target}")
        }
    }
}

$tracked = @(git ls-files)
$forbiddenTracked = $tracked | Where-Object {
    $_ -eq ".obsidian/workspace.json" -or
    $_ -eq ".obsidian/workspace-mobile.json" -or
    $_ -like ".obsidian/plugins/*" -or
    $_ -like "99_Private_Log/*"
}

foreach ($path in $forbiddenTracked) {
    $issues.Add("Forbidden tracked private/local path: $path")
}

if ($issues.Count -gt 0) {
    Write-Host "Vault audit failed:" -ForegroundColor Red
    $issues | Sort-Object | ForEach-Object { Write-Host "- $_" }
    exit 1
}

Write-Host "Vault audit passed: links, embeds, naming, and Git hygiene look clean." -ForegroundColor Green
