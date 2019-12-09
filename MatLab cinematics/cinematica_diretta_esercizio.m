syms A
syms d1
syms d2
syms d3



A1 = [cos(A) -sin(A) 0 0; sin(A) cos(A) 0 0; 0 0 1 d1; 0 0 0 1]
A2 = [1 0 0 0; 0 0 1 0; 0 -1 0 d2; 0 0 0 1]
A3 = [1 0 0 0; 0 1 0 0; 0 0 1 d3; 0 0 0 1]

T = A1 * A2 * A3

simplify(T)
