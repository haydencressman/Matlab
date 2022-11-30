function [A, B, C, D] = Linearization_method(FixedPoint, p, gin_C)
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
%% SS values
Xss = [FixedPoint(1), FixedPoint(2), FixedPoint(3), FixedPoint(4),FixedPoint(5),FixedPoint(6)]; % amount
syms CIp CIi Gp x1 x2 x3 
%%
%% New F4 function (the correct one)
C_ref = C4*(E*ti/(E*ti + Vi));
f4 = U0 + (Um-U0)*(CIi^beta/(CIi^beta + C_ref^beta)); %
f1 = Rm/(1 + exp((C1-Gp)/a1)); % 
f2 = Ub*(1 - exp(-Gp/C2)); % 
f3 = Gp/C3; % [dimensionless]
f5 = Rg/(1+ exp(alpha*(x3 - C5))); % mg/l/min, because:{alpha*(h3/Vp-C5)}-->(L/mU)*[(mU/L)-(mU/L)]-->[dimensionless] 
%% ***
exog_insulin_iv = 0;
F1 = (1/Vp)*f1 - (CIp - CIi)*E/Vp - CIp/tp + (exog_insulin_iv); % [mU/l/min]
F2 = (CIp - CIi)*E/Vi - CIi/ti; % [mU/l/min]
F3 = f5*(1/Vg) - f2/Vg - f3*f4/Vg + gin_C; % [mg/l/min]
F4 = 3*(CIp - x1)/td;% mU/l/min
F5 = 3*(x1 - x2)/td;% mU/l/min
F6 = 3*(x2 - x3)/td;% mU/l/min
%%
JM = jacobian([F1, F2, F3, F4, F5, F6], [CIp, CIi, Gp, x1, x2, x3]);
JMn = subs(JM,{CIp, CIi, Gp, x1, x2, x3},Xss);
%% Compute Jacobian matix
A = double(JMn);
B = [0; 0; 1; 0; 0; 0];
C = [0 0 1 0 0 0];
D = 0;
end

