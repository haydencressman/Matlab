clc
clear
k = (1/7);
%example porblem
% G=(s+1)/(s(s+4))
conv([1 0],conv([1 2],[1 4]));
top = [k -7*k 12*k];
bot = [1+k (3-7*k) 2+k];

G = tf(top,bot)
P = pole(G);
figure;
rlocusplot(G)
Gm = margin(G)
figure;
step(G)
