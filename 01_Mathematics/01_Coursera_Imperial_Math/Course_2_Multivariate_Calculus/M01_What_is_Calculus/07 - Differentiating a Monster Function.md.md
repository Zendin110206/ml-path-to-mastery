# 07: Taming a "Monster" Function (Worked Example)

**Chapter Goal:** To use **all** the tools we have learned (Sum, Power, Product, and Chain Rules) to tackle one complex "monster" function, demonstrating the strategy of breaking down a large problem into smaller, manageable pieces.

---

## 1. The Problem: A Scary-Looking Function

**Goal:** Find the derivative of the complex function:
$$ f(x) = \frac{\sin(2x^5 + 3x)}{e^{7x}} $$
**Main Strategy:** Don't panic. Break the big problem down into smaller pieces that we know how to handle.

---

## 2. Step 1: Simplify the Structure (Turn Division into Multiplication)

- **Idea:** The [[05 - The Product Rule|Product Rule]] is often easier to remember than the Quotient Rule. Let's transform the function's form.
- **Transformation:**
  $f(x) = \sin(2x^5 + 3x) \cdot (e^{7x})^{-1}$
  $f(x) = \sin(2x^5 + 3x) \cdot e^{-7x}$

- **Result:** Now, `f(x)` is in the form $g(x) \cdot h(x)$, which we can solve with the Product Rule.

---

## 3. Step 2: Focus on the First Part (`g(x)`)

- $g(x) = \sin(2x^5 + 3x)$
- **Analysis:** This is a function inside another function. It's a case for the **[[06 - The Chain Rule|Chain Rule]]**.

- **Break Down the Chain:**
  - **Outer Function:** $\sin(u)$
  - **Inner Function:** $u(x) = 2x^5 + 3x$

- **Differentiate Each Part:**
  - **Outer Derivative:** $\frac{d}{du}(\sin u) = \cos(u)$
  - **Inner Derivative ($\frac{du}{dx}$):**
    - Use the Power Rule & Sum Rule: $\frac{d}{dx}(2x^5 + 3x) = 10x^4 + 3$

- **Combine with the Chain Rule:**
  $g'(x) = (\text{Outer Derivative}) \cdot (\text{Inner Derivative})$
  $g'(x) = \cos(u) \cdot (10x^4 + 3)$
- **Return to `x`:** Substitute `u` back with $2x^5 + 3x$.
  > $g'(x) = \cos(2x^5 + 3x) \cdot (10x^4 + 3)$
- *(We just used 3 rules here: Chain, Power, and Sum!)*

---

## 4. Step 3: Focus on the Second Part (`h(x)`)

- $h(x) = e^{-7x}$
- **Analysis:** This is also a function inside a function. A case for the Chain Rule.

- **Break Down the Chain:**
  - **Outer Function:** $e^v$
  - **Inner Function:** $v(x) = -7x$

- **Differentiate Each Part:**
  - **Outer Derivative:** $\frac{d}{dv}(e^v) = e^v$
  - **Inner Derivative ($\frac{dv}{dx}$):** $\frac{d}{dx}(-7x) = -7$

- **Combine with the Chain Rule:**
  $h'(x) = (\text{Outer Derivative}) \cdot (\text{Inner Derivative})$
  $h'(x) = e^v \cdot (-7)$
- **Return to `x`:** Substitute `v` back with $-7x$.
  > $h'(x) = -7e^{-7x}$

---

## 5. Step 4 (Final): Combine Everything with the Product Rule

Now we have all the "ingredients" we need:
- $g(x) = \sin(2x^5 + 3x)$
- $h(x) = e^{-7x}$
- $g'(x) = \cos(2x^5 + 3x) \cdot (10x^4 + 3)$
- $h'(x) = -7e^{-7x}$

- **Apply the Product Rule:** $f'(x) = g(x) \cdot h'(x) + h(x) \cdot g'(x)$
  *(Left * dRight + Right * dLeft)*

- **Final Answer:**
  $$ f'(x) = (\sin(2x^5 + 3x)) \cdot (-7e^{-7x}) + (e^{-7x}) \cdot (\cos(2x^5 + 3x) \cdot (10x^4 + 3)) $$

---

## 6. Key Messages
- **"Premature optimisation is the root of all evil":** Don't waste time simplifying the final algebraic result unless you absolutely need to. Getting the correct derivative is the main step.
- **The Key to Success:** The ability to see the **structure** of a function (is it a sum? a product? a chain?) and break it down into smaller parts.
- With these four rules (Sum, Power, Product, Chain), you have a complete "toolkit" to "tame" almost any function.

---
**Tags:** #mml-specialization #multivariate-calculus #derivatives #worked-example #chain-rule #product-rule