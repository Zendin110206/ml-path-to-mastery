# 04: Derivative Examples & Special Cases

**Chapter Goal:** To apply the formal definition of a [[03 - The Formal Definition of a Derivative|derivative]] to several important "special" functions and observe their unique behaviors.

---

## 1. Example #1: `f(x) = 1/x` (A Function with a Discontinuity)

- **Visual Observation:**
  - The graph of `1/x` has a negative slope everywhere it is defined.
  - At `x=0`, something strange happens. The graph is "broken" or discontinuous. The function is not defined at `x=0` because we cannot divide by zero.

- **Calculation with the Limit Definition:**
  - **Setup:** $f'(x) = \lim_{\Delta x\to0} \frac{\frac{1}{x+\Delta x} - \frac{1}{x}}{\Delta x}$
  - **Algebra Step:** Find a common denominator for the numerator.
    $$ = \lim_{\Delta x\to0} \frac{\frac{x - (x+\Delta x)}{x(x+\Delta x)}}{\Delta x} $$
  - **Simplify:**
    $$ = \lim_{\Delta x\to0} \frac{\frac{-\Delta x}{x(x+\Delta x)}}{\Delta x} $$
  - **Cancel `Δx`:**
    $$ = \lim_{\Delta x\to0} \frac{-1}{x(x+\Delta x)} = \lim_{\Delta x\to0} \frac{-1}{x^2 + x\Delta x} $$
  - **Take the Limit (as `Δx` → 0):** The `xΔx` term will vanish to zero.

- **Result:**
  > $$ \frac{d}{dx}\left(\frac{1}{x}\right) = -\frac{1}{x^2} $$
- **Analysis:** The graph of `-1/x²` is indeed always negative, which we predicted. It is also undefined at `x=0`. It matches!

![[Pasted image 20251219200435.png#center]]

---

## 2. Special Case #1: A Function That is Its Own Derivative

- **The "Magic" Question:** Is there a function `f(x)` where $f'(x) = f(x)$? (Where the slope at every point is equal to the height at that point).
- **Trivial (Boring) Solution:** `f(x) = 0`. Its height is always 0, and its slope is also always 0.
- **The Interesting Solution:**
  - This function must always be positive or always negative (otherwise it would get "stuck" at 0).
  - This function must always be increasing or always decreasing.
- **The Answer:**
  > The Exponential Function $f(x) = e^x$
- **`e` (Euler's Number ≈ 2.718):** Is the "magic" base that makes this property true.
- **Unique Property:** $\frac{d}{dx}(e^x) = e^x$, $\frac{d^2}{dx^2}(e^x) = e^x$, and so on. Its derivative never changes.

---

## 3. Special Case #2: Trigonometric Functions (The Cyclic Derivatives)

- **`f(x) = sin(x)`:**
  - **Visual Observation:** By looking at the slope of the `sin(x)` graph, we can guess that the shape of its derivative is very similar to `cos(x)`.
  - **Fact:** $\frac{d}{dx}(\sin x) = \cos x$.

- **The Cycle of Derivatives:** If we keep differentiating the result:
  1.  $\frac{d}{dx}(\sin x) = \cos x$
  2.  $\frac{d}{dx}(\cos x) = -\sin x$
  3.  $\frac{d}{dx}(-\sin x) = -\cos x$
  4.  $\frac{d}{dx}(-\cos x) = \sin x$ (Back to the start!)
- **Pattern:** The derivatives of `sin(x)` (and `cos(x)`) repeat every four differentiations.
- **Hidden Connection:** This cyclic property suggests that trigonometric functions are "related" to the exponential function (via complex numbers, which is beyond this scope).

![[Pasted image 20251219200959.png#center]]

---

## 4. Key Message
- Even though the algebraic calculations can sometimes look complicated, the core intuition of a derivative is still **Rise over Run** on a very small scale.
- In the real world (data science), we don't always have smooth functions. Sometimes we only have discrete data points.
- Even in those cases, the idea of `Rise over Run` between two adjacent data points "saves the day" and allows us to approximate a derivative.

---
**Tags:** #mml-specialization #multivariate-calculus #derivatives #special-functions #first-principles````