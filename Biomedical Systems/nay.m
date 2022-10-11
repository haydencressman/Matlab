s = tf('s')
[num, den] = tfdata(H,'v');
[A B C D] = tf2ss(H);
T=[0 1;1 0];
[A,B,C,D]=ss2ss(A,B,C,D,T)
% Form the Identity matrix.
I=[1 0;0 1];
% Compute Phi(s).
Phis=inv(s*I-A);
'The resolvant matrix, Phi(s)=' 
pretty(Phis)
% Compute phi(t), the state-transition matrix.
phit=ilaplace(Phis);
'The state-transition matrix, phi(t)=' 
pretty(phit)