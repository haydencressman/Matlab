clc
clear

%example porblem
% G=(s+1)/(s(s+4))

top = [1 1];
bot = [1 4 0];

G = tf(top,bot)

figure;
rlocusplot(G)