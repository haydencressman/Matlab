% transfer function to ss
% tf2ss is a function i think
% ss2tf is another function to do the opposite
% this is number 1 on the in class lab
syms s t
num  = [0 0 4]; %put the numerator coefficients here in decreasing power
den = [1 4 4]; % put the denominator coefficients here in decreasing power
G = tf(num,den); % this is just a transfer function object that holds little value

[A,B,C,D] = tf2ss(num,den); %these are the state space variables
snum = poly2sym(num,s);
sden = poly2sym(den,s);
disp(A)
disp(B)
disp(C)
disp(D)

[top,bot] = ss2tf(A,B,C,D) % this converts it back into numerator and denominator
FT_time_domain = ilaplace(1/s*snum/sden,t)