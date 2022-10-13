syms s t

A = [0 1; -8 -6];
B = [0;1];
C = [0 1];
D = [0]
u = [0]
o = [1;0];
id = [s 0; 0 s];
phis = inv(id - A);

phiso = phis * o;
phisu = phis*B*u;

x = ilaplace(phiso+phisu,t)
y = C*x