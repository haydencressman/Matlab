function [uss,SSvalues] = Compute_Fixed_point(p,input)
% Omega_m = omega(1);
% Omega_l = omega(2); 
% Omega_p = omega(3);
% Omega_beta = omega(4);
% Omega_b = omega(5);
%%
Vp = p.Vp; %  [L]
Vi = p.Vi; %  [L]
Vg = p.Vg; %  [L]
E  = p.E; % [L min^-1]
tp = p.tp; % [min]
ti = p.ti; % [min]
td = p.td; % [min]
Rm = p.Rm; % [mU min^-1]
a1 = p.a1;% []
C1 = p.C1;% [mg L^-]
C2 = p.C2;% [mg l^-1]
C3 = p.C3;% [mg L^-1]
C4 = p.C4;% [mg L^-1]
C5 = p.C5;% [mU L^-1]
Ub = p.Ub;% [mg min^-1]
U0 = p.U0;% [mg min^-1]
Um = p.Um;% [mg min^-1]
Rg = p.Rg;% [mg min^-1]
alpha = p.alpha;% []
beta = p.beta;% []
%% Define onstants
G_ss = input*10; % mg/dl to ---> mg/l
%%
L1 = (E/(Vi*1) + 1/ti);
L2 = E/(Vi*1);
T1 = (E/Vp + 1/tp);
T2 = E/Vp;
M1 = T1-(T2*L2/L1);
%%
f1 = (Rm/(1 + exp((C1- G_ss)/a1))); 
f2 = Ub*(1 - exp(-G_ss/C2));
f3 = G_ss/C3; 
%%
Cip = f1/(Vp*M1);
Ci = Cip*L2/L1;
x1 = Cip;
x2 = x1;
x3 = x2;
%% functions
C_ref = C4*(E*ti/(E*ti + Vi));
f4 = U0 + (Um-U0)*(Ci^beta/(Ci^beta + C_ref^beta)); %
f5 = Rg/(1+ exp(alpha*(x3 - C5))); 
%%
FeeD_amount = f2 + f3*f4 - f5; % mg
FeeD = FeeD_amount; % mg/min
SSvalues = [Cip; Ci; G_ss; x1; x2; x3]; % All SS values
uss = (FeeD);
end



