R = [5 -2 0 7;1 3 -4 2;6 0 8 -1]

%%R =

%%5    -2     0     7
%%1     3    -4     2
%%6     0     8    -1

Z = [2+3i -1+4i 5-2i;-3+i 6 2+5i]

%%Z =

%%2.0000 + 3.0000i  -1.0000 + 4.0000i   5.0000 - 2.0000i
%%-3.0000 + 1.0000i   6.0000 + 0.0000i   2.0000 + 5.0000i

transpose(R)

%%ans =

%%5     1     6
%%-2     3     0
%%0    -4     8
%%7     2    -1

transpose(Z)

%%ans =

%%2.0000 + 3.0000i  -3.0000 + 1.0000i
%%-1.0000 + 4.0000i   6.0000 + 0.0000i
%%5.0000 - 2.0000i   2.0000 + 5.0000i

R'

%%ans =

%%5     1     6
%%-2     3     0
%%0    -4     8
%%7     2    -1

Z'

%%ans =

%%2.0000 - 3.0000i  -3.0000 - 1.0000i
%%-1.0000 - 4.0000i   6.0000 + 0.0000i
%%5.0000 + 2.0000i   2.0000 - 5.0000i

R.'

%%ans =

%%5     1     6
%%-2     3     0
%%0    -4     8
%%7     2    -1

Z.'

%%ans =

%%2.0000 + 3.0000i  -3.0000 + 1.0000i
%%-1.0000 + 4.0000i   6.0000 + 0.0000i
%%5.0000 - 2.0000i   2.0000 + 5.0000i

%%a. Which operations give identical results for the real matrix R?
%%b. Which two operations give identical results for the complex matrix Z?
%%c. What additional operation is performed by the apostrophe operator ' when the matrix contains complex entries?
