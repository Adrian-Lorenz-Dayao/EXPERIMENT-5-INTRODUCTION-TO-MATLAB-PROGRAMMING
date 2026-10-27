# EXPERIMENT 5: INTRODUCTION TO MATLAB PROGRAMMING

**Made by: Adrian Lorenz I. Dayao | 2ECE-A**

The objectives of the program would be to determine and use MATLAB's built-in matrix operations and functions to express, solve, and check linear systems of equations as well as the properties and rules behind them. 

# **A. TRANSPOSE OPERATIONS**

First, the matrices are created with their assigned elements. Two square matrices will be made saved to variables R & Z.
For matrix R:
```matlab
R = [5 -2 0 7;1 3 -4 2;6 0 8 -1]
```

This will yield an output of:
```matlab
R =

5    -2     0     7
1     3    -4     2
6     0     8    -1
```

For matrix Z:
```matlab
Z = [2+3i -1+4i 5-2i;-3+i 6 2+5i]
```

This will yield an output of:
```matlab
Z =

2.0000 + 3.0000i  -1.0000 + 4.0000i   5.0000 - 2.0000i
-3.0000 + 1.0000i   6.0000 + 0.0000i   2.0000 + 5.0000i
```

The operations apostrophe ('), dot-apostrophe (.'), and transpose() will then on the matrices.

transpose() operator:
For matrix R
```matlab
disp('transpose(R)') %prints the string "transpose(R)"
transpose(R)
```

This will yield an output of:
```matlab
transpose(R)
ans =

5     1     6
-2     3     0
0    -4     8
7     2    -1
```

For matrix Z
```matlab
disp('transpose(Z)')
transpose(Z)
```

This will yield an output of:
```matlab
transpose(Z)
ans =

2.0000 + 3.0000i  -3.0000 + 1.0000i
-1.0000 + 4.0000i   6.0000 + 0.0000i
5.0000 - 2.0000i   2.0000 + 5.0000i
```

apostrophe (') operator:

For matrix R:
```matlab
disp("R'")
R'
```

This will yield an output of:
```matlab
R'
ans =

5     1     6
-2     3     0
0    -4     8
7     2    -1
```

For matrix Z:
```matlab
disp("Z'")
Z'
```

This will yield an output of:
```matlab
Z'
ans =

2.0000 - 3.0000i  -3.0000 - 1.0000i
-1.0000 - 4.0000i   6.0000 + 0.0000i
5.0000 + 2.0000i   2.0000 - 5.0000i
```

dot-apostrophe (.') oprator:

For matrix R:
```matlab
disp("R.'")
R.'
```

This will yield an output of:
```matlab
R.'
ans =

5     1     6
-2     3     0
0    -4     8
7     2    -1
```

For matrix Z:
```matlab
disp("Z.'")
Z.'
```

This will yield an output of:
```matlab
Z.'
ans =

2.0000 + 3.0000i  -3.0000 + 1.0000i
-1.0000 + 4.0000i   6.0000 + 0.0000i
5.0000 - 2.0000i   2.0000 + 5.0000i
```

The following are the answers to the given questions:
```matlab
% a. Which operations give identical results for the real matrix R?
% The operations which give identical results for the real matrix R would be all of them as values and their signs remain unchanged, only transposing the original matrix R 
% b. Which two operations give identical results for the complex matrix Z?
% The two operations which give identical results for the complex matrix Z would be the dot-apostrophe (.') operator and the transpose() operator as the apostrophe operator changes the sign of the complex numbers 
% c. What additional operation is performed by the apostrophe operator ' when the matrix contains complex entries?
% The additional operation performed by the apostrophe operator (') when the matrix contains complex entries would be to switch their signs
```

# **TWO METHODS FOR A LINEAR SYSTEM**

The following linear system of equations is given:



The right hand side of the system must first be expressed as a coefficient MATLAB matrix and then the left hand side as a constant vector,

Coeffcient matrix A
```matlab
disp('A = [2 -1 3 2; 1 4 -2 1; 3 2 3 -1; -2 3 4 2] :')
A = [2 -1 3 2; 1 4 -2 1; 3 2 3 -1; -2 3 4 2]
```

Output:
```matlab
A =

2    -1     3     2
1     4    -2     1
3     2     3    -1
-2     3     4     2
```

Constant vector b:
```matlab
disp('b = [16;-7;6;7] :')
b = [16;-7;6;7]
```

Output:
```matlab
b =

16
-7
6
7
```


1.) Inverse method
    Use the inv() operator to get the inverse matrix of Coefficient matrix A:
```matlab
disp('Aneg = inv(A) :')
Aneg = inv(A)
```

Output:
```matlab
Aneg =

0.1506    0.0938    0.1051   -0.1449
-0.1023    0.1250    0.0795    0.0795
0.0114   -0.1250    0.1023    0.1023
0.2812    0.1562   -0.2188    0.0312
```

Then proceed to solve for the values of b by multiplying the Aneg matrix and saving it as the vector "x_inv":

```matlab
disp('x_inv = Aneg*b :')
x_inv = Aneg*b
```
Output:
```matlab
x_inv =

1.3693
-1.4773
2.3864
2.3125
```

2.) Cramer's rule

First create 4 matrices, each time replacing a given column with vector B:
Matrix creation;
``` matlab
disp('Xone = A :')
Xone = A
```

Output:
```matlab
Xone =

2    -1     3     2
1     4    -2     1
3     2     3    -1
-2     3     4     2
```

```matlab
disp('Xtwo = A :')
Xtwo = A
```

Output
```matlab
Xtwo =

2    -1     3     2
1     4    -2     1
3     2     3    -1
-2     3     4     2
```

```matlab
disp('Xthree = A :')
Xthree = A
```

Output:
```matlab
Xthree =

2    -1     3     2
1     4    -2     1
3     2     3    -1
-2     3     4     2

```matlab
disp('Xfour = A :')
Xfour = A
```

Output:
```matlab
Xfour =

2    -1     3     2
1     4    -2     1
3     2     3    -1
-2     3     4     2
```

Column replacement;
```matlab
disp('Xone(:,1) = b :')
Xone(:,1) = b
```

Output:
```matlab
Xone =

16    -1     3     2
-7     4    -2     1
6     2     3    -1
7     3     4     2
```

```matlab
disp('Xtwo(:, 2) = b :')
Xtwo(:, 2) = b
```

Output:
```matlab
Xtwo =

2    16     3     2
1    -7    -2     1
3     6     3    -1
-2     7     4     2
```

```matlab
disp('Xthree(:, 3) = b :')
Xthree(:, 3) = b
```

Output:
```matlab
Xthree =

2    -1    16     2
1     4    -7     1
3     2     6    -1
-2     3     7     2
```

```matlab
disp('Xfour(:, 4) = b :')
Xfour(:, 4) = b 
```

Output:
```matlab
Xfour =

2    -1     3    16
1     4    -2    -7
3     2     3     6
-2     3     4     7
```

Acquire the solution vector by creating column matrix whose elements are the product of multiplying the determinants of the 4 matrices created by the determinant of A.

```matlab
disp('x_cramer = [det(Xone)*(1/det(A));det(Xtwo)*(1/det(A));det(Xthree)*(1/det(A));det(Xfour)*(1/det(A))] :')
x_cramer = [det(Xone)*(1/det(A));det(Xtwo)*(1/det(A));det(Xthree)*(1/det(A));det(Xfour)*(1/det(A))]
```

Output:
```matlab
x_cramer =

1.3693
-1.4773
2.3864
2.3125
```

We then verify the answers through the norm() operation.

```matlab
disp('det(A)')
det(A)
```

Output:
```matlab
ans =

  352
```

If the program runs correctly, the answers for the norms should be approximately zero.

```matlab
disp('norm(x_inv-x_cramer) :')
norm(x_inv-x_cramer)
```

Output:
```matlab
ans =

8.0059e-16
```

```matlab
disp('norm(A*x_inv-b) :')
norm(A*x_inv-b)
```

Output:
```matlab
ans =

5.3291e-15
```