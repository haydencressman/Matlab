% this is skill assessment exercise 8.5 from the text

% a transfer function is given, and we must do a bunch
% of root locus stuff

numg = poly([2 4])
deng = [1 6 25]
G = tf(numg,deng)
rlocus(G)
Gm = margin(G)
z=.5
sgrid(z,0)