# 06: Linearisation

**Chapter Goal:** To understand **Linearisation**, which is the most important and common application of the [[Ch 11 - Taylor Series|Taylor Series]], and to analyze the error of this approximation.

---

## 1. Rewriting the Taylor Series

The video introduces a more intuitive way to write the Taylor Series for talking about "change".

- **Old Notation:** $f(x) \approx f(p) + f'(p)(x-p) + \dots$
  - `p`: The center point of the approximation.
  - `x`: The point where we want to guess the function's value.

- **New, More Intuitive Notation:**
  - We replace `p` (the center point) with `x`.
  - We replace `x-p` (the distance from the center) with **`Δx`** (a "small step").

- **The New Formula:**
  > $$ f(x + \Delta x) \approx f(x) + f'(x)\Delta x + \frac{f''(x)}{2!} (\Delta x)^2 + \dots $$
- **Meaning:** "The value of the function at a **new point** (`x+Δx`) is approximately the value at the **old point** (`f(x)`) plus some correction terms."

---

## 2. What is Linearisation?

- **Definition:** **Linearisation** is the process of approximating a complex function using only the **1st-order approximation** of its Taylor Series.

- **The Linearisation Formula:**
  > $$ f(x + \Delta x) \approx f(x) + f'(x)\Delta x $$

- **Geometric Meaning:**
  - This is the equation of the **[[02 - Rise Over Run#3. The Final Connection (If you also have the a(t) graph)|tangent line]]** at the point `x`.
  - We are ignoring all curvature and pretending that our function behaves like a straight line around the point `x`.
- **Intuition:** `Change in Output ≈ Slope * Change in Input` or `Rise ≈ Slope * Run`.

---

## 3. Analyzing the Approximation "Error"

- **Question:** How "wrong" is our linear approximation?
- **Logic:**
  - The full Taylor Series is exact:
    $f(x+\Delta x) = f(x) + f'(x)\Delta x + \frac{f''(x)}{2!}(\Delta x)^2 + \frac{f'''(x)}{3!}(\Delta x)^3 + \dots$
  - When we linearize, we are **throwing away all terms after the `Δx` term**.
  - The **error** of our approximation is exactly equal to the sum of all the terms we threw away.

- **"Aha!" Moment (Big O Notation):**
  - The first term we throw away is the $(\Delta x)^2$ term.
  - If `Δx` is a very small number (e.g., 0.01), then $(\Delta x)^2$ (0.0001) will be **much, much smaller**. Subsequent terms ($(Δx)^3, \dots$) will be even smaller.
  - Therefore, the size of the error is **dominated** by the first term we discarded.

- **Conclusion about the Error:**
  - The error of linearization is said to be **"of the order of $(\Delta x)^2$"**, written as $O((\Delta x)^2)$.
  - **Meaning:** If we make `Δx` **10x smaller**, the error will become roughly **$10^2 = 100x$ smaller**. The approximation gets very good, very quickly.

---

## 4. Taylor Series "Returning the Favor" to Derivatives

This is a very clever section. We can use the Taylor Series to analyze the error of the `Rise/Run` derivative approximation we used at the very beginning.

- **Problem:** We know $f'(x) = \lim_{\Delta x\to0} \frac{f(x+\Delta x)-f(x)}{\Delta x}$. But how "wrong" is this approximation if `Δx` is not approaching zero?

- **Algebraic Process:**
  1.  Start with the full Taylor formula:
      $f(x+\Delta x) = f(x) + f'(x)\Delta x + \frac{f''(x)}{2!}(\Delta x)^2 + \dots$
  2.  Rearrange it to isolate $f'(x)$:
      $f'(x) = \left[ \frac{f(x+\Delta x) - f(x)}{\Delta x} \right] - \left[ \frac{f''(x)}{2!}\Delta x + \dots \right]$

- **Interpreting the Result:**
  > **Exact Derivative = (Rise/Run Approximation) + (Error Terms)**

- **Conclusion:**
  - The error of the "Finite Difference" derivative approximation is dominated by the `Δx` term.
  - This method is said to have **first-order accuracy**, or $O(\Delta x)$.
  - **Meaning:** If we make `Δx` **10x smaller**, the error will also only get **10x smaller** (not as fast as the function approximation).

- **Key Message:** The Taylor Series is not just a tool for approximating functions, but also a powerful **analytical tool** for understanding the accuracy of various numerical methods.

---
**Tags:** #mml-specialization #multivariate-calculus #taylor-series #linearization #big-o-notation #error-analysis````````