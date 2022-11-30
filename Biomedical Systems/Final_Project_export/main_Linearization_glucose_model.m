%clc

% 
p = parameters_UM();
Omega_p = 1; % plasma
Omega_beta = 1; % beta cells
Omega_b = 1; % brain
Omega_m = 1.5; % muscle % *************>>> 50% increased
Omega_l = 1; % liver
Sizes = [Omega_beta,Omega_m,Omega_l];
omega = [Omega_m; Omega_l; Omega_p; Omega_beta; Omega_b];
%% Linearization method
% NL parameters
G_ss=115;
[gin_C, SSV_C] = Compute_Fixed_point(p,G_ss); % The feeding function mg/min
[A, B, C, D] = Linearization_method(SSV_C, p, gin_C)  