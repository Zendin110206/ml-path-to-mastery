Recall from the _PageRank_ notebook, that in PageRank, we care about the eigenvector of the link matrix, LLL, that has eigenvalue 1, and that we can find this using _power iteration method_ as this will be the largest eigenvalue.

PageRank can sometimes get into trouble if closed-loop structures appear. A simplified example might look like this,

![A network of four webpages - A, B, C, and D. Page A links to B, page B links to C, page C links to D, and page D links to A.](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/95T5jO8QEeeFrgryCjqNWg_a7ac8d21dc15703802fb2166e3326101_loop.png?expiry=1766045284494&hmac=nJQNZdRh4Dy40XLJjr-T9QgrUkzAZZ8ArGITqjDLWVg)

With link matrix, L=[0001100001000010]L=⎣⎢⎢⎢⎡​0100​0010​0001​1000​⎦⎥⎥⎥⎤​L = \begin{bmatrix} 0 & 0 & 0 & 1 \\ 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \end{bmatrix}.

Use the calculator in Q1 to check the eigenvalues and vectors for this system.

What might be going wrong? Select all that apply.



The system is too small.

Some of the eigenvectors are complex.

Other eigenvalues are not small compared to 1, and so do not decay away with each power iteration.

Because of the loop, _Procrastinating Pat_s that are browsing will go around in a cycle rather than settling on a webpage.

None of the other options.

1 point

### 3.

Question 3

The loop in the previous question is a situation that can be remedied by damping.

If we replace the link matrix with the damped, L′=[0.10.10.10.70.70.10.10.10.10.70.10.10.10.10.70.1]L′=⎣⎢⎢⎢⎡​0.10.70.10.1​0.10.10.70.1​0.10.10.10.7​0.70.10.10.1​⎦⎥⎥⎥⎤​L' = \begin{bmatrix} 0.1 & 0.1 & 0.1 & 0.7 \\ 0.7 & 0.1 & 0.1 & 0.1 \\ 0.1 & 0.7 & 0.1 & 0.1 \\ 0.1 & 0.1 & 0.7 & 0.1 \end{bmatrix}, how does this help?



There is now a probability to move to any website.

The complex number disappear.

It makes the eigenvalue we want bigger.

The other eigenvalues get smaller.

None of the other options.

1 point

### 4.

Question 4

Another issue that may come up, is if there are disconnected parts to the internet. Take this example,

![A network of four webpages - A, B, C, and D. Page A links to B, page B links to A, page C links to D, and page D links to C.](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/MBFZMu8eEee0NxKvr-H_gA_4eaa9edab8bb451eaf5122c0526d54c9_disconnect.png?expiry=1766045284506&hmac=qk7iyrx4SjfHA849biQvViCNxBT-ry6LTQsdtyPQWho)

with link matrix, L=[0100100000010010]L=⎣⎢⎢⎢⎡​0100​1000​0001​0010​⎦⎥⎥⎥⎤​L = \begin{bmatrix} 0 & 1 & 0 & 0 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 1 & 0\end{bmatrix}.

This form is known as block diagonal, as it can be split into square blocks along the main diagonal, i.e., L=[A00B]L=[A0​0B​]L = \begin{bmatrix} A & 0 \\ 0 & B \end{bmatrix}, with A=B=[0110]A=B=[01​10​]A = B = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix} in this case.

What is happening in this system?



There are two eigenvalues of 1.

There are loops in the system.

None of the other options.

There isn't a unique PageRank.

The system has zero determinant.

1 point

### 5.

Question 5

By similarly applying damping to the link matrix from the previous question. What happens now?



The negative eigenvalues disappear.

Damping does not help this system.

The system settles into a single loop.

None of the other options.

There becomes two eigenvalues of 1.

1 point

### 6.

Question 6

Given the matrix A=[3/2−1−1/21/2]A=[3/2−1/2​−11/2​]A = \begin{bmatrix} 3/2 & -1 \\ -1/2 & 1/2 \end{bmatrix}, calculate its characteristic polynomial.



λ2+2λ−14λ2+2λ−41​lambda, squared, plus, 2, lambda, minus, start fraction, 1, divided by, 4, end fraction

λ2+2λ+14λ2+2λ+41​lambda, squared, plus, 2, lambda, plus, start fraction, 1, divided by, 4, end fraction

λ2−2λ−14λ2−2λ−41​lambda, squared, minus, 2, lambda, minus, start fraction, 1, divided by, 4, end fraction

λ2−2λ+14λ2−2λ+41​lambda, squared, minus, 2, lambda, plus, start fraction, 1, divided by, 4, end fraction

1 point

### 7.

Question 7

By solving the characteristic polynomial above or otherwise, calculate the eigenvalues of the matrix A=[3/2−1−1/21/2]A=[3/2−1/2​−11/2​]A = \begin{bmatrix} 3/2 & -1 \\ -1/2 & 1/2\end{bmatrix}.



λ1=1−32,λ2=1+32λ1​=1−23​​,λ2​=1+23​​lambda, start subscript, 1, end subscript, equals, 1, minus, start fraction, square root of, 3, end square root, divided by, 2, end fraction, comma, lambda, start subscript, 2, end subscript, equals, 1, plus, start fraction, square root of, 3, end square root, divided by, 2, end fraction

λ1=1−52,λ2=1+52λ1​=1−25​​,λ2​=1+25​​lambda, start subscript, 1, end subscript, equals, 1, minus, start fraction, square root of, 5, end square root, divided by, 2, end fraction, comma, lambda, start subscript, 2, end subscript, equals, 1, plus, start fraction, square root of, 5, end square root, divided by, 2, end fraction

λ1=−1−52,λ2=−1+52λ1​=−1−25​​,λ2​=−1+25​​lambda, start subscript, 1, end subscript, equals, minus, 1, minus, start fraction, square root of, 5, end square root, divided by, 2, end fraction, comma, lambda, start subscript, 2, end subscript, equals, minus, 1, plus, start fraction, square root of, 5, end square root, divided by, 2, end fraction

λ1=−1−32,λ2=−1+32λ1​=−1−23​​,λ2​=−1+23​​lambda, start subscript, 1, end subscript, equals, minus, 1, minus, start fraction, square root of, 3, end square root, divided by, 2, end fraction, comma, lambda, start subscript, 2, end subscript, equals, minus, 1, plus, start fraction, square root of, 3, end square root, divided by, 2, end fraction

1 point

### 8.

Question 8

Select the two eigenvectors of the matrix A=[3/2−1−1/21/2]A=[3/2−1/2​−11/2​]A = \begin{bmatrix} 3/2 & -1 \\ -1/2 & 1/2 \end{bmatrix}.



v1=[1−51],v2=[1+51]v1​=[1−5​1​],v2​=[1+5​1​]\mathbf{v_1} = \begin{bmatrix} 1 - \sqrt{5} \\ 1 \end{bmatrix}, \mathbf {v_2} = \begin{bmatrix} 1 + \sqrt{5} \\ 1 \end{bmatrix}

v1=[−1−31],v2=[−1+31]v1​=[−1−3​1​],v2​=[−1+3​1​]\mathbf{v_1} = \begin{bmatrix} -1 - \sqrt{3} \\ 1 \end{bmatrix}, \mathbf {v_2} = \begin{bmatrix} -1 + \sqrt{3} \\ 1 \end{bmatrix}

v1=[−1−51],v2=[−1+51]v1​=[−1−5​1​],v2​=[−1+5​1​]\mathbf{v_1} = \begin{bmatrix} -1 - \sqrt{5} \\ 1 \end{bmatrix}, \mathbf {v_2} = \begin{bmatrix} -1 + \sqrt{5} \\ 1 \end{bmatrix}

v1=[1−31],v2=[1+31]v1​=[1−3​1​],v2​=[1+3​1​]\mathbf{v_1} = \begin{bmatrix} 1 - \sqrt{3} \\ 1 \end{bmatrix}, \mathbf {v_2} = \begin{bmatrix} 1 + \sqrt{3} \\ 1 \end{bmatrix}

1 point

### 9.

Question 9

Form the matrix CCC whose left column is the vector v1v1​v, start subscript, 1, end subscript and whose right column is v2v2​v, start subscript, 2, end subscript from immediately above.

By calculating D=C−1ACD=C−1ACD, equals, C, start superscript, minus, 1, end superscript, A, C or by using another method, find the diagonal matrix DDD.



[−1−3200−1+32][−1−23​​0​0−1+23​​​]\begin{bmatrix} -1 - \frac{\sqrt3}{2} & 0 \\ 0 & -1 + \frac{\sqrt3}{2} \end{bmatrix}

[1−52001+52][1−25​​0​01+25​​​]\begin{bmatrix} 1 - \frac{\sqrt5}{2} & 0 \\ 0 & 1 + \frac{\sqrt5}{2} \end{bmatrix}

[−1−5200−1+52][−1−25​​0​0−1+25​​​]\begin{bmatrix} -1 - \frac{\sqrt5}{2} & 0 \\ 0 & -1 + \frac{\sqrt5}{2} \end{bmatrix}

[1+32001−32][1+23​​0​01−23​​​]\begin{bmatrix} 1 + \frac{\sqrt3}{2} & 0 \\ 0 & 1 - \frac{\sqrt3}{2} \end{bmatrix}

1 point

### 10.

Question 10

By using the diagonalisation above or otherwise, calculate A2A2A, squared.



[−11/421−3/4][−11/41​2−3/4​]\begin{bmatrix} -11/4 & 2 \\ 1 & -3/4 \end{bmatrix}

[11/4−2−13/4][11/4−1​−23/4​]\begin{bmatrix}11/4 & -2 \\ -1 & 3/4 \end{bmatrix}

[11/4−1−23/4][11/4−2​−13/4​]\begin{bmatrix}11/4 & -1 \\ -2 & 3/4 \end{bmatrix}

[−11/412−3/4][−11/42​1−3/4​]