# 05: The Product Rule

**Chapter Goal:** To build a strong geometric intuition for the **[[Aturan Produk|Product Rule]]**, moving beyond rote memorization to understand *why* the formula looks the way it does.

---

## 1. Background: Avoiding Tedious Limit Calculations

- **Problem:** Using the limit definition ($\frac{f(x+\Delta x) - f(x)}{\Delta x}$) every single time to find a derivative is very tedious and long.
- **Solution:** Mathematicians have found "shortcuts" or rules for specific types of functions.
- **Known Rules:** [[03 - The Formal Definition of a Derivative#4. The "Shortcuts": Rules of Differentiation|Power Rule]], [[03 - The Formal Definition of a Derivative#4. The "Shortcuts": Rules of Differentiation|Sum Rule]].
- **New Rule to Learn:** The **Product Rule**, for differentiating a function that is the product of two other functions (e.g., $x^2 \cdot \sin(x)$).

---

## 2. Geometric Intuition: The Growing Rectangle

- **Core Idea:** Instead of using pure algebra, we will build intuition by drawing.
- **Visualization:** Imagine the function $A(x) = f(x) \cdot g(x)$ as the **AREA** of a rectangle where:
  - The **width** is $f(x)$.
  - The **height** is $g(x)$.

- **The Derivative Question:** Finding $\frac{dA}{dx}$ is the same as asking:
  > "How fast is the area of this rectangle changing as `x` changes?"

---

## 3. The "Tiny Nudge" ($\Delta x$) Experiment

- **Action:** We "nudge" the input `x` by a small amount, $\Delta x$.
- **Consequence:** Because $f(x)$ and $g(x)$ depend on `x`, both the width and height of our rectangle will change:
  - The width increases by a small amount $\Delta f$. The new width is $f + \Delta f$.
  - The height increases by a small amount $\Delta g$. The new height is $g + \Delta g$.

- **The Total Change in Area ($\Delta A$):**
  This increase in area comes from the **three new rectangular sections** that appear on the right and top sides.

---

## 4. "Aha!" Moment: Analyzing the New Area

The new area ($\Delta A$) consists of:
1.  **The Bottom Strip:** `width * height` = $f(x) \cdot \Delta g$.
2.  **The Right Strip:** `height * width` = $g(x) \cdot \Delta f$.
3.  **The Small Corner Box:** `width * height` = $\Delta f \cdot \Delta g$.

- **The Calculus Approximation:**
  - As $\Delta x$ approaches zero, $\Delta f$ and $\Delta g$ also become very small.
  - Therefore, the corner box ($\Delta f \cdot \Delta g$) becomes **doubly small** and can be considered **negligible** (it can be ignored).

![[Pasted image 20251219203208.png#center]]

- **The Approximation Result:** The significant change in area comes only from the two main strips.
  > $\Delta A \approx (f(x) \cdot \Delta g) + (g(x) \cdot \Delta f)$

---

## 5. Deriving the Product Rule Formula

![[Pasted image 20251219203036.png#center]]

We are now just one step away. We want to find $\frac{dA}{dx}$. Let's divide our entire approximation equation by $\Delta x$:
$$ \frac{\Delta A}{\Delta x} \approx \frac{f(x) \cdot \Delta g}{\Delta x} + \frac{g(x) \cdot \Delta f}{\Delta x} $$

Now, we take the **Limit** as $\Delta x \rightarrow 0$:
- $\frac{\Delta A}{\Delta x}$ becomes $\frac{dA}{dx}$ (the derivative of A).
- $\frac{\Delta g}{\Delta x}$ becomes $\frac{dg}{dx}$ or $g'(x)$.
- $\frac{\Delta f}{\Delta x}$ becomes $\frac{df}{dx}$ or $f'(x)$.

- **The Final Formula (The Product Rule):**
  > $$ \frac{d}{dx}(f \cdot g) = f \cdot g' + g \cdot f' $$

**Conclusion:**
The Product Rule is not a magic formula. Each of its terms ($f \cdot g'$ and $g \cdot f'$) has a clear geometric meaning: it is the area of one of the "growth strips" of our rectangle.

---
**Tags:** #mml-specialization #multivariate-calculus #derivatives #product-rule