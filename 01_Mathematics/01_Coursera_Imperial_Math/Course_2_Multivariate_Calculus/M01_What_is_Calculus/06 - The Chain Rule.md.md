# 06: The Chain Rule

**Chapter Goal:** To build a strong intuition for the **[[Aturan Rantai|Chain Rule]]**, the rule for differentiating composite (nested) functions.

---

## 1. Background: Functions Inside Functions (Composition)

- **Problem:** We often encounter functions whose input is the output of another function. This is called a **composite function** or a nested function.

- **Intuitive Example (The Pizza Chain):**
  - $h(p)$: **Happiness** (`h`) is a function of the **pizza** (`p`) eaten.
  - $p(m)$: The amount of **pizza** (`p`) you can buy is a function of the **money** (`m`) you have.
  - **Combined Function:** We have a chain of relationships: **Money → Pizza → Happiness**. We can write this as $h(p(m))$.

![[Pasted image 20251219211916.png]]

- **The Key Question:**
  > "How fast does my happiness (`h`) change if my money (`m`) changes a little bit?"
  - We want to find $\frac{dh}{dm}$.

---

## 2. Two Ways to Solve the Problem

### Method #1: Direct Substitution (Brute Force)
1.  Substitute the formula for $p(m)$ into every `p` in the formula for $h(p)$.
2.  This will result in one very complicated function `h` that depends only on `m`.
3.  Differentiate this complicated function directly.
- **Disadvantage:** This can be very difficult and algebraically intensive if the functions are complex.

### Method #2: The Chain Rule (The Elegant Way)
- **Core Idea:** We can use the derivatives of each "link" in the chain separately.
- We know two things:
  1.  How fast happiness changes with respect to pizza ($\frac{dh}{dp}$).
  2.  How fast pizza changes with respect to money ($\frac{dp}{dm}$).
- **The "Domino Effect" Logic:**
  The total change in happiness due to a change in money is:
  `(The rate of change of h with respect to p) * (The rate of change of p with respect to m)`

---

## 3. "Aha!" Moment: The Intuitive Leibniz Notation

If we write the "domino effect" logic above using derivative (Leibniz) notation, we get:
> $$ \frac{dh}{dm} = \frac{dh}{dp} \cdot \frac{dp}{dm} $$

- **Notational Intuition:** Although this is not a standard fraction cancellation, visually the `dp` on top and the `dp` on the bottom look like they can "cancel out," leaving `dh/dm`.
- This is a very powerful mnemonic for remembering the Chain Rule.

---

## 4. Applying the Chain Rule to the Pizza Example

1.  **Find the Derivative of Each "Link":**
    - $h(p) = -\frac{1}{3}p^2 + p + \frac{1}{5} \implies \frac{dh}{dp} = 1 - \frac{2}{3}p$
    - $p(m) = e^m - 1 \implies \frac{dp}{dm} = e^m$

2.  **Multiply the Two Derivatives (Apply the Chain Rule):**
    $$ \frac{dh}{dm} = \frac{dh}{dp} \cdot \frac{dp}{dm} = \left(1 - \frac{2}{3}p\right) \cdot e^m $$

3.  **Return to the Language of `m`:**
    - Our result still contains `p`. We must substitute it back with $p(m) = e^m - 1$.
    $$ \frac{dh}{dm} = \left(1 - \frac{2}{3}(e^m - 1)\right) \cdot e^m $$
    *(After simplification, this will be identical to the result from the direct substitution method).*

![[Pasted image 20251219213704.png]]

---

## 5. Key Message
- The Chain Rule might seem like a "long way around" for simple examples.
- **Its True Power:** In the real world and in ML, we often don't know the analytical formula for a function, but we can *measure* its derivatives (e.g., from experimental data).
- In such cases, the Chain Rule becomes extremely powerful because it allows us to combine known derivatives to find a total derivative that we don't know. This is the **core idea behind Backpropagation** in Neural Networks.

![[Pasted image 20251219212238.png]]

---
## 6. Worked Examples

Working through a few concrete examples is the best way to make the Chain Rule feel like a real tool, not just a theory. We will use both methods (Direct Substitution vs. Chain Rule) where possible to prove that the results are identical.

### Example 1: `sin(x²)` (The 3Blue1Brown Example)

**Problem:** Find the derivative of $y = \sin(x^2)$.

**Identify the "Links" in the Chain:**
- **Inner Function `g(x)`:** $g(x) = x^2$
- **Outer Function `f(g)`:** $f(g) = \sin(g)$

#### Method #1: The Chain Rule (Elegant)
1.  **Find the derivative of each link:**
    - $\frac{dg}{dx} = g'(x) = 2x$
    - $\frac{df}{dg} = f'(g) = \cos(g)$
2.  **Multiply them (Apply the Chain Rule):**
    $$ \frac{dy}{dx} = \frac{df}{dg} \cdot \frac{dg}{dx} $$
    $$ \frac{dy}{dx} = \cos(g) \cdot (2x) $$
3.  **Return to the language of `x`:** Substitute `g` back with $x^2$.
    $$ \frac{dy}{dx} = \cos(x^2) \cdot 2x $$

#### Method #2: Direct Substitution (Brute Force - for verification)
- In this case, we cannot do this because we don't know how to directly differentiate `sin(x²)` without the chain rule. This is a prime example where the Chain Rule is the **only** way forward.

---
### Example 2: `(x³ + 1)¹⁰`

**Problem:** Find the derivative of $y = (x^3 + 1)^{10}$.

**Identify the "Links" in the Chain:**
- **Inner Function `g(x)`:** $g(x) = x^3 + 1$
- **Outer Function `f(g)`:** $f(g) = g^{10}$

#### Method #1: The Chain Rule (Elegant)
1.  **Find the derivative of each link:**
    - $\frac{dg}{dx} = g'(x) = 3x^2$
    - $\frac{df}{dg} = f'(g) = 10g^9$ (using the Power Rule)
2.  **Multiply them (Apply the Chain Rule):**
    $$ \frac{dy}{dx} = \frac{df}{dg} \cdot \frac{dg}{dx} $$
    $$ \frac{dy}{dx} = (10g^9) \cdot (3x^2) $$
3.  **Return to the language of `x`:** Substitute `g` back with $x^3 + 1$.
    $$ \frac{dy}{dx} = 10(x^3 + 1)^9 \cdot 3x^2 $$

#### Method #2: Direct Substitution (Brute Force - DO NOT ATTEMPT)
- Imagine you had to expand $(x^3 + 1)^{10}$ into a very long polynomial ($x^{30} + ...$).
- Then, you would have to differentiate every single term of that long polynomial.
- This would take a very long time and be extremely error-prone. The Chain Rule is clearly far superior here.

---
### Example 3: `e^(sin x)`

**Problem:** Find the derivative of $y = e^{\sin(x)}$.

**Identify the "Links" in the Chain:**
- **Inner Function `g(x)`:** $g(x) = \sin(x)$
- **Outer Function `f(g)`:** $f(g) = e^g$

#### Method #1: The Chain Rule (Elegant)
1.  **Find the derivative of each link:**
    - $\frac{dg}{dx} = g'(x) = \cos(x)$
    - $\frac{df}{dg} = f'(g) = e^g$ (since the derivative of `e` is itself)
2.  **Multiply them (Apply the Chain Rule):**
    $$ \frac{dy}{dx} = \frac{df}{dg} \cdot \frac{dg}{dx} $$
    $$ \frac{dy}{dx} = e^g \cdot \cos(x) $$
3.  **Return to the language of `x`:** Substitute `g` back with $\sin(x)$.
    $$ \frac{dy}{dx} = e^{\sin(x)} \cdot \cos(x) $$

---
### The Pattern You Can See
The process for the Chain Rule is always the same:
1.  Identify the outer and inner functions.
2.  Differentiate the **outer function**, but leave its input as the **unaltered inner function**.
3.  **Multiply** by the derivative of the **inner function**.


---
**Tags:** #mml-specialization #multivariate-calculus #derivatives #chain-rule #backpropagation