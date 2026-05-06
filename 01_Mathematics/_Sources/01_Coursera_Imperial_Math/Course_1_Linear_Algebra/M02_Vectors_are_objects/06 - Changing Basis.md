# 06: Changing Basis

**Chapter Goal:** To understand that coordinate systems are arbitrary and to learn a projection-based method for finding the coordinates of a vector in a **new orthogonal basis**.

---

## 1. Core Idea: Coordinate Systems are Arbitrary

- **Reminder:** A vector $\vec{r}$ is a geometric object (an arrow) that exists independently of any coordinate system.
- **Coordinates** (e.g., `[3, 4]`): Are just a "recipe" or a set of instructions to get to the tip of that arrow.
- `[3, 4]` in the standard basis ($\vec{e}_1, \vec{e}_2$) means: "Walk 3 units in the direction of $\vec{e}_1$, then 4 units in the direction of $\vec{e}_2$."

- **"Aha!" Moment:** The choice of our "rulers" or basis vectors ($\vec{e}_1, \vec{e}_2$) is entirely **arbitrary**. We can choose other "rulers" that are skewed, not perpendicular to each other, or have different lengths.
- The same vector $\vec{r}$ will have a **different "recipe" (coordinates)** if we use a different set of basis vectors (e.g., a basis of $\vec{b}_1, \vec{b}_2$).

- **Conclusion:** The vector itself is fundamental; the numbers (coordinates) we use to describe it are not. Coordinates only have meaning once we know which [[Basis]] is being used.

---

## 2. Special Case: Changing to a New Orthogonal Basis

- **Problem:** We have a vector $\vec{r}$ in the standard basis `e` ($\vec{r}_e = [3, 4]$). We have a new basis formed by $\vec{b}_1, \vec{b}_2$. We want to find the coordinates of $\vec{r}$ in the `b` basis ($\vec{r}_b = [?, ?]$).

- **Special Condition:** This method **ONLY WORKS** if the new basis vectors ($\vec{b}_1$ and $\vec{b}_2$) are **mutually orthogonal** (perpendicular).

- **How to Check for Orthogonality:**
  - Calculate their [[Dot Product]]: $\vec{b}_1 \cdot \vec{b}_2$.
  - If $\vec{b}_1 \cdot \vec{b}_2 = 0$, then they are orthogonal.

---

## 3. Geometric Intuition: Projection as a Coordinate-Finding Tool

- If the new basis $\vec{b}_1, \vec{b}_2$ is orthogonal, then they form a new set of perpendicular "axes".
- To find "how much of $\vec{r}$ goes in the direction of $\vec{b}_1$," we can simply project $\vec{r}$ onto $\vec{b}_1$.

- **Logic:**
  - The vector projection of $\vec{r}$ onto $\vec{b}_1$ is the component of $\vec{r}$ that is parallel to $\vec{b}_1$.
  - The vector projection of $\vec{r}$ onto $\vec{b}_2$ is the component of $\vec{r}$ that is parallel to $\vec{b}_2$.
- Because $\vec{b}_1$ and $\vec{b}_2$ are orthogonal, $\vec{r}$ can be perfectly reconstructed by summing these two projection vectors:
  $$ \vec{r} = \text{proj}_{\vec{b}_1}(\vec{r}) + \text{proj}_{\vec{b}_2}(\vec{r}) $$

- **"Aha!" Moment:** The scalar coefficients of each basis vector in this sum are our new coordinates!
  $$ \vec{r} = (c_1 \cdot \vec{b}_1) + (c_2 \cdot \vec{b}_2) $$
  (Where $c_1 \cdot \vec{b}_1 = \text{proj}_{\vec{b}_1}(\vec{r})$)
  Therefore, the coordinates of $\vec{r}$ in basis `b` are $\vec{r}_b = [c_1, c_2]$.

---

## 4. The Calculation Process

- **Goal:** Find the scalars $c_1$ and $c_2$.
- Remember the scalar multiple from the [[Vector Projection]] formula:
  $$ \text{proj}_{\vec{s}}(\vec{r}) = \left( \frac{\vec{s} \cdot \vec{r}}{\vec{s} \cdot \vec{s}} \right) \vec{s} $$
  The coefficient `c` we are looking for is that scalar part: $c = \frac{\vec{s} \cdot \vec{r}}{\vec{s} \cdot \vec{s}}$.

- **Calculating $c_1$ (the first coordinate in basis `b`):**
  $$ c_1 = \frac{\vec{b}_1 \cdot \vec{r}_e}{\vec{b}_1 \cdot \vec{b}_1} = \frac{\vec{b}_1 \cdot \vec{r}_e}{|\vec{b}_1|^2} $$

- **Calculating $c_2$ (the second coordinate in basis `b`):**
  $$ c_2 = \frac{\vec{b}_2 \cdot \vec{r}_e}{\vec{b}_2 \cdot \vec{b}_2} = \frac{\vec{b}_2 \cdot \vec{r}_e}{|\vec{b}_2|^2} $$

- **Example from the Video:**
  - $\vec{r}_e = [3, 4]$
  - $\vec{b}_1 = [2, 1]$, $\vec{b}_2 = [-2, 4]$
  - **Check Orthogonality:** $\vec{b}_1 \cdot \vec{b}_2 = (2)(-2) + (1)(4) = -4 + 4 = 0$. OK.
  - **Calculate $c_1$:**
    $$ c_1 = \frac{[2,1] \cdot [3,4]}{[2,1] \cdot [2,1]} = \frac{6+4}{4+1} = \frac{10}{5} = 2 $$
  - **Calculate $c_2$:**
    $$ c_2 = \frac{[-2,4] \cdot [3,4]}{[-2,4] \cdot [-2,4]} = \frac{-6+16}{4+16} = \frac{10}{20} = 0.5 $$
  - **Result:** The new coordinates of $\vec{r}$ in basis `b` are $\vec{r}_b = [2, 0.5]$.
  - **Verification:**
    $2\vec{b}_1 + 0.5\vec{b}_2 = 2[2,1] + 0.5[-2,4] = [4,2] + [-1,2] = [3,4]$. Matches the original $\vec{r}_e$.

---

## 5. Important Point

- This projection method is a quick and elegant way to perform a change of basis, **BUT ONLY if the new basis is orthogonal.**
- If the basis is not orthogonal, we need a more powerful tool: **matrices** (which will be covered later in this specialization and was detailed in the 3Blue1Brown series).

---
**Tags:** #mml-specialization #linear-algebra #change-of-basis #basis-vectors #orthogonality #projection


>[!NOTE]
>Catatan tambahan agar lebih mudah memahami ( lebih ditekankan pemahaman fundamental daripada hanya jago menghitung)

---
### **Mode 2: Intuitive Explanation (Currency & Language Analogy)**

Okay, take a deep breath. The concept of "Changing Basis" sounds intimidating, but it's actually something very simple that we do in everyday life. Let's use an analogy to make it "click".

#### 1. The Intuition: "Same Thing, Different Label"

Imagine you have a **$100 USD bill** in your hand.
- If you ask an American (USD Basis): "What's the value of this?", they'll say: **"100"**.
- If you ask an Indonesian (Rupiah Basis): "What's the value of this?", they'll say: **"1,600,000"**.

**Key Point:**
- Did the value of the money change? **No.** The money is still that single piece of paper.
- What changed was the **number** we use to describe it, depending on which "standard" (**basis**) we're using.

**In Vectors:**
- The vector $\vec{r}$ is the money (the real object in space).
- The Basis ($\vec{e}$ or $\vec{b}$) is the currency (our way of measuring it).

#### 2. The Visualization: The Grid Paper

So far, we've always used the Standard Basis ($\vec{e}$).
- $\vec{e}_1$ (X-axis): 1 step straight to the Right.
- $\vec{e}_2$ (Y-axis): 1 step straight Up.

When we say a vector $\vec{r} = \begin{bmatrix} 3 \\ 4 \end{bmatrix}$, it's an instruction: "Walk 3 times in the $\vec{e}_1$ direction, then 4 times in the $\vec{e}_2$ direction."

**What is Changing Basis?**
Imagine an alien comes to visit. This alien has a weird way of walking.
- Their Step 1 ($\vec{b}_1$): Diagonally right and slightly up (e.g., our $\begin{bmatrix} 2 \\ 1 \end{bmatrix}$).
- Their Step 2 ($\vec{b}_2$): Diagonally left and up (e.g., our $\begin{bmatrix} -2 \\ 4 \end{bmatrix}$).

Now, the alien asks:
> "Hey human, that vector $\vec{r}$ of yours... if I use my walking style, how many of my $\vec{b}_1$ steps and how many of my $\vec{b}_2$ steps does it take?"

That is the essence of Changing Basis. We want to change the recipe $\begin{bmatrix} 3 \\ 4 \end{bmatrix}$ into a new recipe, alien-style.

#### 3. The Connection to Projection

Now, this is the best part. You've already learned about [[Projection]]. In the video, the instructor says there's an easy way to find the "Alien's Recipe" using Projection, **BUT** there's a condition:
- **Mandatory Condition:** The Alien's Step 1 ($\vec{b}_1$) and Step 2 ($\vec{b}_2$) must be **Perpendicular ($90^\circ$)**.

**Why?** Because if they are perpendicular, we can use the "shadow" logic we just learned.

Remember the [[Vector Projection]] formula?
$$ \text{proj}_{\vec{b}}(\vec{r}) = \left( \frac{\vec{r} \cdot \vec{b}}{|\vec{b}|^2} \right) \vec{b} $$

The number inside the parentheses, $\left( \frac{\vec{r} \cdot \vec{b}}{|\vec{b}|^2} \right)$, is the **NEW COORDINATE!**
It's the answer to the question: "How many $\vec{b}$'s do I need?"

#### 4. Breaking Down the Video's Example

Let's break down the instructor's calculation step-by-step.

- **Given:**
  - Target Vector: $\vec{r} = \begin{bmatrix} 3 \\ 4 \end{bmatrix}$ (This is our "money").
  - Alien Basis 1: $\vec{b}_1 = \begin{bmatrix} 2 \\ 1 \end{bmatrix}$.
  - Alien Basis 2: $\vec{b}_2 = \begin{bmatrix} -2 \\ 4 \end{bmatrix}$.

**Step 1: Check if the alien walks perpendicularly (Dot Product)**
$$ \vec{b}_1 \cdot \vec{b}_2 = (2 \times -2) + (1 \times 4) = -4 + 4 = 0 $$
The result is 0. Great! They are orthogonal. We can use the projection formula.

**Step 2: Find the new coordinate for the $\vec{b}_1$ direction**
We project $\vec{r}$ onto $\vec{b}_1$.
$$ \text{Coordinate } 1 = \frac{\vec{r} \cdot \vec{b}_1}{|\vec{b}_1|^2} $$
- $\vec{r} \cdot \vec{b}_1 = (3)(2) + (4)(1) = 6 + 4 = 10$.
- $|\vec{b}_1|^2 = 2^2 + 1^2 = 5$.
- Result: $\frac{10}{5} = 2$.
This means: We need **2 steps** in the $\vec{b}_1$ direction.

**Step 3: Find the new coordinate for the $\vec{b}_2$ direction**
We project $\vec{r}$ onto $\vec{b}_2$.
$$ \text{Coordinate } 2 = \frac{\vec{r} \cdot \vec{b}_2}{|\vec{b}_2|^2} $$
- $\vec{r} \cdot \vec{b}_2 = (3)(-2) + (4)(4) = -6 + 16 = 10$.
- $|\vec{b}_2|^2 = (-2)^2 + 4^2 = 4 + 16 = 20$.
- Result: $\frac{10}{20} = 0.5$.
This means: We need **0.5 steps** in the $\vec{b}_2$ direction.

**CONCLUSION:**
- In the standard world, the vector is called $\begin{bmatrix} 3 \\ 4 \end{bmatrix}$.
- In the Alien's world ($\vec{b}$), the EXACT SAME vector is called $\begin{bmatrix} 2 \\ 0.5 \end{bmatrix}$.

This means: "Walk 2 times diagonally right ($\vec{b}_1$), then walk half a time diagonally left ($\vec{b}_2$), and you will arrive at the same point as $\begin{bmatrix} 3 \\ 4 \end{bmatrix}$."

The core idea is just changing the "walking recipe" to get to the same destination.