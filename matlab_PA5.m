%A.

R = [5 -2 0 7;1 3 -4 2;6 0 8 -1]

% R =

% 5    -2     0     7
% 1     3    -4     2
% 6     0     8    -1

Z = [2+3i -1+4i 5-2i;-3+i 6 2+5i]

% Z =

% 2.0000 + 3.0000i  -1.0000 + 4.0000i   5.0000 - 2.0000i
% -3.0000 + 1.0000i   6.0000 + 0.0000i   2.0000 + 5.0000i

disp('transpose(R)')
transpose(R)

%transpose(R)
% ans =

% 5     1     6
% -2     3     0
% 0    -4     8
% 7     2    -1

disp('transpose(Z)')
transpose(Z)

%transpose(Z)
% ans =

% 2.0000 + 3.0000i  -3.0000 + 1.0000i
% -1.0000 + 4.0000i   6.0000 + 0.0000i
% 5.0000 - 2.0000i   2.0000 + 5.0000i

disp("R'")
R'

%R'
% ans =

% 5     1     6
% -2     3     0
% 0    -4     8
% 7     2    -1

disp("Z'")
Z'

%Z'
% ans =

% 2.0000 - 3.0000i  -3.0000 - 1.0000i
% -1.0000 - 4.0000i   6.0000 + 0.0000i
% 5.0000 + 2.0000i   2.0000 - 5.0000i

disp("R.'")
R.'

%R.'
% ans =

% 5     1     6
% -2     3     0
% 0    -4     8
% 7     2    -1

disp("Z.'")
Z.'

%Z.'
% ans =

% 2.0000 + 3.0000i  -3.0000 + 1.0000i
% -1.0000 + 4.0000i   6.0000 + 0.0000i
% 5.0000 - 2.0000i   2.0000 + 5.0000i

disp('a. Which operations give identical results for the real matrix R?')
disp('The operations which give identical results for the real matrix R would be all of them as values and their signs remain unchanged, only transposing the original matrix R')
disp('b. Which two operations give identical results for the complex matrix Z?')
disp("The two operations which give identical results for the complex matrix Z would be the dot-apostrophe (.') operator and the transpose() operator as the apostrophe operator changes the sign of the complex numbers")
disp("c. What additional operation is performed by the apostrophe operator ' when the matrix contains complex entries?")
disp("The additional operation performed by the apostrophe operator (') when the matrix contains complex entries would be to switch their signs")

% a. Which operations give identical results for the real matrix R?
% The operations which give identical results for the real matrix R would be all of them as values and their signs remain unchanged, only transposing the original matrix R 
% b. Which two operations give identical results for the complex matrix Z?
% The two operations which give identical results for the complex matrix Z would be the dot-apostrophe (.') operator and the transpose() operator as the apostrophe operator changes the sign of the complex numbers 
% c. What additional operation is performed by the apostrophe operator ' when the matrix contains complex entries?
% The additional operation performed by the apostrophe operator (') when the matrix contains complex entries would be to switch their signs

%B.

disp('')
disp('A = [2 -1 3 2; 1 4 -2 1; 3 2 3 -1; -2 3 4 2] :')
A = [2 -1 3 2; 1 4 -2 1; 3 2 3 -1; -2 3 4 2]

% A =

% 2    -1     3     2
% 1     4    -2     1
% 3     2     3    -1
% -2     3     4     2

disp('b = [16;-7;6;7] :')
b = [16;-7;6;7]

% b =

% 16
% -7
% 6
% 7

disp('Aneg = inv(A) :')
Aneg = inv(A)

% Aneg =

% 0.1506    0.0938    0.1051   -0.1449
% -0.1023    0.1250    0.0795    0.0795
% 0.0114   -0.1250    0.1023    0.1023
% 0.2812    0.1562   -0.2188    0.0312

disp('x_inv = Aneg*b :')
x_inv = Aneg*b

% x_inv =

% 1.3693
% -1.4773
% 2.3864
% 2.3125

disp('Xone = A :')
Xone = A

% Xone =

% 2    -1     3     2
% 1     4    -2     1
% 3     2     3    -1
% -2     3     4     2

disp('Xtwo = A :')
Xtwo = A

% Xtwo =

% 2    -1     3     2
% 1     4    -2     1
% 3     2     3    -1
% -2     3     4     2

disp('Xthree = A :')
Xthree = A

% Xthree =

% 2    -1     3     2
% 1     4    -2     1
% 3     2     3    -1
% -2     3     4     2

disp('Xfour = A :')
Xfour = A

% Xfour =

% 2    -1     3     2
% 1     4    -2     1
% 3     2     3    -1
% -2     3     4     2

disp('Xone(:,1) = b :')
Xone(:,1) = b

% Xone =

% 16    -1     3     2
% -7     4    -2     1
% 6     2     3    -1
% 7     3     4     2

disp('Xtwo(:, 2) = b :')
Xtwo(:, 2) = b

% Xtwo =

% 2    16     3     2
% 1    -7    -2     1
% 3     6     3    -1
% -2     7     4     2

disp('Xthree(:, 3) = b :')
Xthree(:, 3) = b

% Xthree =

% 2    -1    16     2
% 1     4    -7     1
% 3     2     6    -1
% -2     3     7     2

disp('Xfour(:, 4) = b :')
Xfour(:, 4) = b 

% Xfour =

% 2    -1     3    16
% 1     4    -2    -7
% 3     2     3     6
% -2     3     4     7

disp('x_cramer = [det(Xone)*(1/det(A));det(Xtwo)*(1/det(A));det(Xthree)*(1/det(A));det(Xfour)*(1/det(A))] :')
x_cramer = [det(Xone)*(1/det(A));det(Xtwo)*(1/det(A));det(Xthree)*(1/det(A));det(Xfour)*(1/det(A))]

% x_cramer =

% 1.3693
% -1.4773
% 2.3864
% 2.3125

disp('det(A)')
det(A)

% ans =

  %352

disp('norm(x_inv-x_cramer) :')
norm(x_inv-x_cramer)

% ans =

% 8.0059e-16

disp('norm(A*x_inv-b) :')
norm(A*x_inv-b)

% ans =

% 5.3291e-15



