clc
clear
k = (1/7);
%example porblem
% G=(s+1)/(s(s+4))
conv([1 0],conv([1 2],[1 4]));
top = [1 2];
bot = [1 -4 13];

G = tf(top,bot)
P = pole(G);
figure;
rlocusplot(G)
Gm = margin(G)
figure;
step(G)
