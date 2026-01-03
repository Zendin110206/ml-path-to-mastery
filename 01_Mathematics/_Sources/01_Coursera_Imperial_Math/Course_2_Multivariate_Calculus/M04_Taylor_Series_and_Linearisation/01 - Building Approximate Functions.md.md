# 01: Building Approximate Functions

**Chapter Goal:** To build the motivation and intuition for **why we need approximations** before diving into the mathematics of the [[Ch 11 - Taylor Series|Taylor Series]].

---

## 1. The Real-World Problem: Reality is Complicated

- **Core Idea:** Functions that describe phenomena in the real world are often extremely complex and involve many variables.

- **Intuitive Example (Cooking a Chicken):**
  - The function for the perfect cooking time (`t`) will depend on many things:
    > `t = f(mass, oven_temp, chicken_shape_factor, ...)`
  - The relationships are also non-linear and difficult to predict.

---

## 2. The Pragmatic Solution: Approximation (Simplification)

- **Practical Problem:** No one wants to solve a "monster" equation just to cook dinner. We need something that is simple and "good enough".

![[Pasted image 20260103221332.png]]

- **The Approximation Process (Simplification):**

  1.  **Make Assumptions (Simplifying Variables):**
      - *"Let's assume all ovens are the same."* → `Oven_Factor` becomes a constant.
      - *"Let's assume all chickens have a similar shape."* → `Chicken_Shape_Factor` becomes a constant.
      - **Result:** We have successfully eliminated many variables, leaving a simpler function, e.g., `t(m)`.

![[Pasted image 20260103221414.png#center]]

  2.  **Focus on a Relevant Range (Simplifying the Domain):**
      - We don't care about chickens with negative weight or that weigh 100 kg.
      - *"Let's assume most people cook chickens around 1.5 kg."*
      - **Result:** We can focus our attention on a small region around `m = 1.5` on our function's graph.



---

## 3. "Aha!" Moment: Linear Approximation (Linearization)

- **The Key [[Calculus]] Idea:** If we "zoom in" very close to a single point on a curved graph, the curve will look almost like a **straight line**.

- **Linear Approximation:**
  - Instead of using the still-curved and complex function `t(m)`, let's approximate it with a **straight line** around the point `m = 1.5`.
  - This straight line is the **[[02 - Rise Over Run#3. The Final Connection (If you also have the a(t) graph)|tangent line]]** to the curve at that point.
  - **Straight Line Form:** `y = mx + c` (in this context: `time ≈ (slope) * mass + (constant)`).

- **The Final Result (The Cookbook Recipe):**
  - Our "monster" function is simplified into a very easy rule:
    > `Cooking Time ≈ 50 * Mass + 15` (in minutes).
  - Is this 100% accurate? **No.**
  - Is it "good enough" for normal-sized chickens (e.g., 1-2 kg)? **Yes.**
  - Is it much easier to use? **Definitely.**

![[Pasted image 20260103221505.png#center]]

---

## 4. Key Message: The Bridge to Taylor Series

- This linear approximation (the straight line) is the **first-order approximation** and is the core of **Linearization**.
- The **[[Ch 11 - Taylor Series|Taylor Series]]** is the "super-tool" that allows us to:
  1.  Systematically find the formula for this linear approximation (using the first [[Turunan|derivative]]).
  2.  Create even **better** approximations by adding higher-order terms ($x^2, x^3$, etc.) to capture the "curvature" of the original function (using the second, third, and higher derivatives).

---
> [!Info]
> If you maybe still a litttle bit confused, here is the longer 
## 5. Deeper Intuition: The Cookbook Author's Dilemma

Let's break down the thought process from the start, focusing on the mindset of a **cookbook author**. We'll forget about Taylor Series for now and focus on one problem: **creating a simple cooking instruction.**

### Part 1: The Cookbook Author's Problem
Imagine you are a famous chef writing a cookbook titled "The Perfect Roasted Chicken."

You are a perfectionist. You know that to get a *truly* perfect result, the cooking time (`t`) depends on **many factors**:
- `m`: Mass of the chicken (a bigger chicken takes longer).
- `S`: Shape of the chicken (a rounder chicken cooks slower than a flatter one).
- `T`: Initial temperature of the chicken (from the fridge vs. room temp).
- `O`: Type of oven (gas, electric, convection).
- ...and dozens of other factors.

Theoretically, you could create a super-accurate **"Monster Function"**:
> `t = f(m, S, T, O, ...)`

This function might be incredibly complex. This is where the problem arises:
If you write this "Monster Function" in your cookbook, **no one will buy it!** Nobody wants to calculate a fifth-degree polynomial while holding a raw chicken.

**Your Goal:** You must **simplify** this problem into an instruction that a normal person can follow.

### Part 2: The Simplification Process (Making Assumptions)
As the recipe author, you start making **reasonable assumptions** to simplify your "Monster Function".

**Assumption #1: "Assume All Chickens are Similar"**
> *"Okay, most people buy their chicken from the supermarket. The shape (`S`) and initial temperature (`T`) are more or less the same. I'll ignore the `S` and `T` variables for now."*
- **Result:** Your "Monster Function" is now a bit simpler, perhaps only depending on mass: `t = g(m)`.

**Assumption #2: "Assume All Ovens are Similar"**
> *"I'll write this recipe for a standard electric oven. I'll ignore the `O` variable."*
- **Result:** The function `g(m)` remains, but now we know it only applies under specific oven conditions.

Now, your function is **still complex**, but at least it only depends on one variable: `t = g(m)`. This is still too difficult for a cookbook.

### Part 3: Focus on the Most Common Case ("Zooming In")
> *"Who am I writing this recipe for? Not for someone roasting a tiny quail (0.2 kg) or a giant ostrich (50 kg)."*
> *"My target audience is someone cooking a **normal-sized chicken**, which is around **1.5 kg**."*
> *"So, I don't need a recipe that is accurate for all possible masses. I only need a recipe that is **very accurate around 1.5 kg**."*

This is where the **"zoom in" idea from calculus** comes into play. You look at your complex, curved graph of `t(m)`, and you **place your microscope on the point `m = 1.5`**.

### Part 4: The "Aha!" Moment: A Curved Line Looks Straight Up Close
> *"Let's build a nice **straight line approximation**... This line is a fairly reasonable approximation to the function in the **region close to the point of interest**..."*

- When you "zoom in" on the point `m = 1.5` on your graph, that small piece of the complex curve will look **almost straight**.
- **Your Genius Idea:** "What if I **replace** this complex curved piece with a **simple straight line** that 'grazes' it at that point (the tangent line)?"

This straight line has two advantages:
1.  **Very Accurate (in the important region):** For a chicken with a mass of `1.4 kg`, `1.5 kg`, or `1.6 kg`, the prediction from this straight line will be **almost identical** to the prediction from the "Monster Function".
2.  **Very Simple (to write down):** The formula for a straight line is `y = mx + c`.

This thought process—from a monster function to a simple straight line by making assumptions and zooming in—is the core intuition behind **Linearization** and the first step of a [[Ch 11 - Taylor Series|Taylor Series]].

---
**Tags:** #mml-specialization #multivariate-calculus #approximation #linearization #taylor-series