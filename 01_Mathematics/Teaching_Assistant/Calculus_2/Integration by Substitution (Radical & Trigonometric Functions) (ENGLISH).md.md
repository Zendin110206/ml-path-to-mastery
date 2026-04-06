---
title: "Integration by Substitution (Radical & Trigonometric Functions)"
course: "Calculus 2"
role: "Teaching Assistant"
author: "Muhammad Zaenal Abidin Abdurrahman"
---
# 📌 Integration by Substitution: Radical Expressions

When dealing with integrals containing linear radical expressions such as $\sqrt[n]{ax + b}$, the initial instinct is often to substitute only the inner expression ($u = ax+b$). However, this leads to fractional exponents which are prone to calculation errors.

**The Golden Rule:** Substitute the *entire* radical expression to eliminate fractions early in the process.

## ⚙️ General Workflow
1. Let $u = \sqrt[n]{ax + b}$
2. Raise both sides to the power of $n$ to eliminate the root: $u^n = ax + b$
3. Differentiate both sides to find $dx$.

---

## 📝 Case Study 1: Standard Radical Substitution

**Problem:** Evaluate $\int x \sqrt{x+1} \, dx$

**Step-by-Step Solution:**

1. **Substitution:**
   Let $u = \sqrt{x+1}$
   Square both sides: $u^2 = x + 1$
   Isolate $x$: $x = u^2 - 1$

2. **Differentiation:**
   Differentiate both sides (left with respect to $u$, right with respect to $x$):
   $2u \, du = dx$

3. **Integration:**
   Substitute all terms back into the original integral:
   $$\int (u^2 - 1) \cdot u \cdot (2u \, du)$$
   $$\int (u^2 - 1) \cdot 2u^2 \, du$$
   $$2 \int (u^4 - u^2) \, du$$

   Integrate using the standard power rule:
   $$2 \left( \frac{1}{5}u^5 - \frac{1}{3}u^3 \right) + C$$

4. **Back-Substitution:**
   Replace $u$ with $\sqrt{x+1}$ or $(x+1)^{1/2}$:
   $$\frac{2}{5}(x+1)^{5/2} - \frac{2}{3}(x+1)^{3/2} + C$$

---

## 📝 Case Study 2: Fractional Expressions (Advanced)

**Problem:** Evaluate $\int \frac{x^2 + 2x}{\sqrt{x+1}} \, dx$

**Step-by-Step Solution:**

1. **Substitution & Differentiation:**
   Let $u = \sqrt{x+1}$
   $u^2 = x + 1 \implies x = u^2 - 1$
   $2u \, du = dx$

2. **Algebraic Manipulation (Numerator):**
   Instead of substituting $x$ directly into $(x^2 + 2x)$ and expanding, factor the expression first to save time:
   $$x^2 + 2x = x(x + 2)$$
   Substitute $x = u^2 - 1$:
   $$= (u^2 - 1)(u^2 - 1 + 2)$$
   $$= (u^2 - 1)(u^2 + 1)$$
   Using the difference of squares $(a-b)(a+b) = a^2 - b^2$:
   $$= u^4 - 1$$

3. **Integration:**
   Substitute back into the integral:
   $$\int \frac{u^4 - 1}{u} \cdot (2u \, du)$$
   Cancel out the $u$ in the numerator and denominator:
   $$\int (u^4 - 1) \cdot 2 \, du$$
   $$2 \int (u^4 - 1) \, du$$

   Integrate:
   $$2 \left( \frac{1}{5}u^5 - u \right) + C$$

4. **Back-Substitution:**
   $$\frac{2}{5}(x+1)^{5/2} - 2(x+1)^{1/2} + C$$

---

## 💡 Transition to Trigonometric Substitution

The method of substituting the entire radical works flawlessly when the inner expression is linear (e.g., $ax+b$). 

**The Limitation:**
What if the expression inside the radical is a quadratic, such as $\sqrt{4 - x^2}$ or $\sqrt{x^2 + 9}$? 
If we force the same method ($u^2 = 4 - x^2$) and differentiate, an extra $x$ variable appears on the right side ($2u \, du = -2x \, dx$), adding unnecessary complexity.

**The Solution:**
To break down radicals containing quadratic terms, we must use **Trigonometric Substitution**. By substituting $x$ with trigonometric functions (e.g., $x = a \sin t$), we can leverage fundamental identities (like $\sin^2 t + \cos^2 t = 1$) to eliminate the radical entirely.