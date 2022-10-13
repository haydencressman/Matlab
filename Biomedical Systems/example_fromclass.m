%code he gave us
% This MATLAB program verifies the calculations of Example 8.4.
%
% Designate the symbolic variables to be used.
clear all
clc
% close all
syms s t
% Enter the numerator and denominator coefficient arrays.
n=[1 6];
d=[1 6 8];
% Show the transfer function.
Hs=tf(n,d)
% Convert the system into a state-variable model.
[A,B,C,D]=tf2ss(n,d)
% Perform a similarity transformation to put the
% model in control-canonical form.
% (Similarity transformations are discussed in Section 8.6).
T=[0 1;1 0];
[A,B,C,D]=ss2ss(A,B,C,D,T)
% Form the Identity matrix.
I=[1 0;0 1];
% Compute Phi(s).
Phis=inv(s*I-A);
'The resolvant matrix, Phi(s)=' 
pretty(Phis)
% Compute phi(t), the state-transition matrix.
phit=ilaplace(Phis);
'The state-transition matrix, phi(t)=' 
pretty(phit)

%% transition matrix
%sub-systems

syms k1 k2 s
As =[-k1,0;k1, -k2];
Bs=[1;0];
Cs = [0,1]; %output is x2
D =0;
H = Cs*inv(s*eye(2)-As)*Bs;
pretty(H)
%
Phiss =inv(s*eye(2)-As);
pretty(Phiss)
Phits = ilaplace(Phiss);
pretty(Phits)

top = [k1]
bot = [1 k1+k2 k1*k2]

%sent = tf(top,bot)
%GpssObs = canon(Gp,'companion')
%

