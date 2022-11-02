%inverse matrix
syms s a b c d e;
Y = [s+1 0 0 0 0; 1 s+1 0 0 0; 0 1 s+1+1 0 1; 0 0 1 s 0; 0 0 1 0 s+1]
X = inv(Y)
I = eye(5);
W = I*X*[1;0;0;0;0]
pretty(W(1,1))
pretty(W(2,1))
pretty(W(3,1))
pretty(W(4,1))
pretty(W(5,1))

num1 = [1]
den1 = [1 1]

num2 = [-1]
den2 = [1 2 1]

num3 = [1]
den3 = [1 4 4 1]

num4 = [-1]
den4 = [1 4 4 1 0]

num5 = [-1]
den5 = [1 5 8 5 1]

sys1 = tf(num1, den1)
sys2 = tf(num2, den2)
sys3 = tf(num3, den3)
sys4 = tf(num4, den4)
sys5 = tf(num5, den5)
figure
step(sys1)
figure
step(sys2)
figure
step(sys3)
figure
step(sys4)
figure
step(sys5)