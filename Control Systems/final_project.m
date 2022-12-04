% TCP/IP Router Packet Drop Probability
% Where L in this case is K for stability
% and root locus purposes

% Open-Loop Transfer function is given by

top = [-5625000, 7031250];
den = conv([1,.667],conv([1,5],[1,50]));

Gop = tf(top,den);
P = pole(Gop)
figure;
rlocusplot(Gop);
Gm = margin(Gop)
figure;
step(Gop);
[A,B,C,D] = tf2ss(top,den);



%%
% The closed loop denominator is given by 
% D(s) = s^3 + 55.67s^2 + (286.73 - 5625000k)s + (166.8 + 7031250k)
% This gives (-2.3723x10^-5 < k < 4.9333x10^-5)

% Closed-Loop function with k
syms s k;
k = 5.5e-5;
topcl = [-5625000*k 7031250*k];
botcl = [1 55.67 (286.73-5625000*k) (166.8+7031250*k)];

tfcl = tf(topcl,botcl)
P = pole(tfcl)
figure;
step(tfcl)




