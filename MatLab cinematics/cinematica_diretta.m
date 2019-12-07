syms A
syms B
syms C
syms d4


A1 = [cos(A) -sin(A) 0 0; sin(A) cos(A) 0 0; 0 0 1 0; 0 0 0 1]
A2 = [cos(B) -sin(B) 0 0.3*cos(B); sin(B) cos(B) 0 0.3*sin(B); 0 0 1 0; 0 0 0 1]

A3 = [cos(C) -sin(C) 0 0.3*cos(C); sin(C) cos(C) 0 0.3*sin(C); 0 0 1 0; 0 0 0 1]
A4 = [1 0 0 0; 0 -1 0 0; 0 0 -1 d4; 0 0 0 1]

T = A1 * A2 * A3 * A4

simplify(T)
