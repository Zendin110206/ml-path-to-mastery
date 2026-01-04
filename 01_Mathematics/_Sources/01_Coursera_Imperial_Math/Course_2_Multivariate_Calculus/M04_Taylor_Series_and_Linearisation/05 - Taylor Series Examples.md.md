# 05: Taylor Series Examples

**Chapter Goal:** To apply the formal [[03 - Power Series Derivation|Taylor Series recipe]] to two distinct examples: one "well-behaved" function (`cos(x)`) and one "problematic" function (`1/x`).

---

## 1. Example #1: `f(x) = cos(x)` (A "Well-Behaved" Function)

- **Goal:** Build the Maclaurin Series (approximation around `x=0`) for `cos(x)`.
- **Process:** We follow the recipe $c_n = \frac{f^{(n)}(0)}{n!}$.

### Step 1: Gather Derivatives at `x=0`
- We know the pattern of derivatives is `cos, -sin, -cos, sin, ...`
- The values at `x=0` follow the pattern: `1, 0, -1, 0, 1, ...`

### Step 2: Observe the Coefficient Pattern
- Since the derivatives for **odd** powers ($f'(0), f'''(0), \dots$) are always zero, all coefficients for the **odd terms** ($c_1, c_3, \dots$) will also be zero.
- **Conclusion:** The Taylor series for `cos(x)` will only have **even-powered terms**. This makes visual sense, as `cos(x)` is an even function (symmetric about the y-axis), and $x^2, x^4, \dots$ are also even functions.

### Final Result (The Series)
$$ \cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots $$
- **Sigma Notation:**
  $$ \cos(x) = \sum_{n=0}^{\infty} \frac{(-1)^n}{(2n)!} x^{2n} $$

### Visualization
As you can see in the pictures below, each new term added makes the approximating polynomial (purple) "hug" the `cos(x)` curve (white) more tightly and for a longer duration.

![[Pasted image 20260104084958.png#center]]

![[Pasted image 20260104085008.png#center]]

- **Warning:** Outside of the approximation range, the polynomial will "explode" and become very inaccurate. We must be aware of the domain of validity for our approximation.


---

## 2. Example #2: `f(x) = 1/x` (A "Problematic" Function)

- **Problem:** We want to build an approximation for `1/x`.

### Hurdle #1: The Problem at `x=0`
- We **cannot** create a Maclaurin Series (approximation at `x=0`) because the function `1/x` is **undefined** at `x=0` (we can't divide by zero). The function is discontinuous and not "well-behaved" there.
- **Solution:** Let's move to another, "safer" point.
  > *"Clearly, we aren't going to have much luck at the point x = 0. So why not try going somewhere else... Let's look at the point x = 1."*

- **New Task:** Build a **Taylor Series** (not Maclaurin) for $f(x) = 1/x$ centered at **`p=1`**.

### Step 1: Gather Derivatives at `x=1`
- $f(x) = x^{-1} \implies f(1) = 1$
- $f'(x) = -x^{-2} \implies f'(1) = -1$
- $f''(x) = 2x^{-3} \implies f''(1) = 2$
- $f'''(x) = -6x^{-4} \implies f'''(1) = -6$
- $f^{(n)}(x) = (-1)^n n! x^{-(n+1)} \implies f^{(n)}(1) = (-1)^n n!$
- **"Aha!" Moment (Factorial Cancellation):** The pattern of derivatives at `x=1` is `1, -1, 2, -6, ...` or $(-1)^n n!$.

### Step 2: Calculate Coefficients $c_n = f^{(n)}(1) / n!$
$$ c_n = \frac{(-1)^n n!}{n!} = (-1)^n $$
The coefficients are incredibly simple: `1, -1, 1, -1, ...`

### Final Result (The Series)
- Remember, we must use `(x-p)` or `(x-1)`.
  > $\frac{1}{x} = 1 - 1(x-1) + 1(x-1)^2 - 1(x-1)^3 + \dots$

### Visualization & Limitations
As shown in the images below, this approximation works well around `x=1`.
- It completely ignores what happens at the `x=0` asymptote or in the `x < 0` region.
- This series has a **Radius of Convergence**. It is only valid for `0 < x < 2`. Outside of that range, the approximation "explodes" and becomes incorrect.

![[Pasted image 20260104085032.png#center]]

![[Pasted image 20260104085053.png#center]]

**Key Message:**
The [[Ch 11 - Taylor Series|Taylor Series]] is a powerful tool, but it can only reconstruct a function in a region where the function is "well-behaved" and connected to our center of approximation. It cannot "jump" over discontinuities.

---
**Tags:** #mml-specialization #multivariate-calculus #taylor-series #maclaurin-series #convergence````