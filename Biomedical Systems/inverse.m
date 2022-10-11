%inverse matrix
syms s a b c d e;
Y = [s+a 0 0 0 0; a s+b 0 0 0; 0 b s+c+d 0 e; 0 0 d s 0; 0 0 c 0 s+e]
X = inv(Y)