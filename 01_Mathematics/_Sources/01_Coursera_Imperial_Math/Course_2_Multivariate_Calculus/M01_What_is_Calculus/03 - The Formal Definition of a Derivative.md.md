# 03: The Formal Definition of a Derivative

**Chapter Goal:** To translate our visual understanding of "gradient/slope" into a formal mathematical notation that we can use for calculations. This is a formal version of 3Blue1Brown's Chapter 2.

---

## 1. Background: From Visual to Formal

- **Goal:** To translate our visual understanding of "gradient/slope" into a formal mathematical notation that we can use for calculations.
- **Initial Intuition (Straight Line):** For a straight line, the slope is always constant and easy to calculate using `Rise / Run` ($\frac{\Delta y}{\Delta x}$) between any two points.

![[Pasted image 20251219194445.png#center]]

---

## 2. Handling a Curved Graph

- **Problem:** For a curve, the `Rise/Run` slope will be different depending on which two points we choose.
- **Strategy:**
  1.  Choose a single point `x` where we want to know the instantaneous slope.
  2.  Choose a second point that is very close, at `x + Δx`. `Δx` is our "tiny nudge".
  3.  Calculate the slope of the **secant line** (the connecting line) between these two points.
      - **Run:** $\Delta x$
      - **Rise:** $f(x + \Delta x) - f(x)$
  4.  **Approximated Slope:** $\frac{f(x + \Delta x) - f(x)}{\Delta x}$

![[Pasted image 20251219194943.png#center]]

- **The Calculus Step ([[Limit]]):**
  - This approximation gets better and better as `Δx` gets smaller.
  - **Formal Definition of a Derivative:** The derivative $f'(x)$ is the **LIMIT** of this Rise/Run ratio as `Δx` approaches zero.
    > $$ f'(x) = \lim_{\Delta x\to0} \frac{f(x + \Delta x) - f(x)}{\Delta x} $$
- The process of using this definition to find a derivative is called **Differentiation**.

![[Pasted image 20251219195029.png]]

![[Pasted image 20251219195113.png#center]]

---

## 3. Practical Examples: Applying the Definition

### A. Linear Function: `f(x) = 3x + 2`
1.  **Plug into the Formula:**
    $f'(x) = \lim_{\Delta x\to0} \frac{[3(x+\Delta x) + 2] - [3x+2]}{\Delta x}$
2.  **Expand the Algebra:**
    $= \lim_{\Delta x\to0} \frac{3x + 3\Delta x + 2 - 3x - 2}{\Delta x}$
3.  **Simplify (many terms cancel):**
    $= \lim_{\Delta x\to0} \frac{3\Delta x}{\Delta x}$
4.  **Cancel `Δx`:**
    $= \lim_{\Delta x\to0} 3$
5.  **Take the Limit:** Since there is no `Δx` left, the limit is simply 3.
- **Result:** `f'(x) = 3`. This matches our intuition that the slope of the line `3x+2` is always a constant 3.

### B. Quadratic Function: `f(x) = 5x²`
1.  **Plug into the Formula:**
    $f'(x) = \lim_{\Delta x\to0} \frac{5(x+\Delta x)^2 - 5x^2}{\Delta x}$
2.  **Expand the Algebra:**
    $= \lim_{\Delta x\to0} \frac{5(x^2 + 2x\Delta x + (\Delta x)^2) - 5x^2}{\Delta x}$
    $= \lim_{\Delta x\to0} \frac{5x^2 + 10x\Delta x + 5(\Delta x)^2 - 5x^2}{\Delta x}$
3.  **Simplify:**
    $= \lim_{\Delta x\to0} \frac{10x\Delta x + 5(\Delta x)^2}{\Delta x}$
4.  **Cancel `Δx` (divide each term in the numerator by `Δx`):**
    $= \lim_{\Delta x\to0} (10x + 5\Delta x)$
5.  **Take the Limit (as `Δx` → 0):**
    - The `10x` term is unaffected.
    - The `5Δx` term becomes `5*0 = 0` and vanishes.
- **Result:** `f'(x) = 10x`.

---

## 4. The "Shortcuts": Rules of Differentiation

Going through the limit definition from first principles every time is tedious. Therefore, mathematicians discovered "shortcuts" or general rules after seeing patterns from many examples.

- **Power Rule:**
  > $\frac{d}{dx} (ax^b) = abx^{b-1}$
  (The power `b` comes down to multiply `a`, and then the power is reduced by one).
- **Example:** $\frac{d}{dx} (5x^2) = 5 \cdot 2 \cdot x^{2-1} = 10x^1 = 10x$. It matches!

- **Sum Rule:**
  > $\frac{d}{dx} (f(x) + g(x)) = f'(x) + g'(x)$
  (The derivative of a sum is the sum of the derivatives).
- **Example:** $\frac{d}{dx} (3x + 2) = \frac{d}{dx}(3x) + \frac{d}{dx}(2) = 3 + 0 = 3$. It matches!

- **Key Message:** These rules are simply "shortcuts" that have been proven from the fundamental limit definition of a derivative.

![[Pasted image 20251219194726.png]]

---
**Tags:** #mml-specialization #multivariate-calculus #derivatives #limits #first-principles #power-rule