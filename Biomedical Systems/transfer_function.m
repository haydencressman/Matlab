% transfer function to ss
% tf2ss is a function i think
% ss2tf is another function to do the opposite
% this is number 1 on the in class lab
syms s t
% this is for 3(s+2)/(s(s+1)(s+4))
% conv() is used to multiply two sytems of equations together and give
%you the coefficients back in an array
% residue is used to do the partial fraction decomposition so
% LOOK THIS UP ^^^^^^^^^
stuff = conv([1,1], [1,2])
more = conv(stuff, [1,3])
[r,p,k] = residue([2], [1 6 11 6])
num  = [1 0]; %put the numerator coefficients here in decreasing power
den = [1 3 2]; % put the denominator coefficients here in decreasing power
G = tf(num,den) % this is just a transfer function object that holds little value

[A,B,C,D] = tf2ss(num,den) %these are the state space variables
snum = poly2sym(num,s);
sden = poly2sym(den,s);



[top,bot] = ss2tf(A,B,C,D) % this converts it back into numerator and denominator
FT_time_domain = ilaplace(snum/sden)