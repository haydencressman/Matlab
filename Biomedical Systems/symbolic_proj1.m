%inverse matrix
syms s a b c d e;
Y = [s+a 0 0 0 0; a s+b 0 0 0; 0 b s+c+d 0 e; 0 0 d s 0; 0 0 c 0 s+e]
X = inv(Y)
I = eye(5);
W = I*X*[1;0;0;0;0]
pretty(W(1,1))
pretty(W(2,1))
pretty(W(3,1))
pretty(W(4,1))
pretty(W(5,1))

step(W(1,1))