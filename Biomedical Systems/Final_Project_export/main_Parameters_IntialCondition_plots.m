%% Initial conditions
% clear all
% clc
% close all
%

Ip_0 = 90; % [mU]
Ii_0 = 220;% [mU] 
G_0 = 12000;% [mg]
h_10 = 0.1;%[mU]
h_20 = 0.2;%[mU]
h_30 = 0.1;%[mU]
%%
% G0=30;
% Ip0=10;
%
Gin=200;
%
Vp = 3;  %'Vp' [L] 
Vi = 11; %'Vp' [L] 
Vg = 10; %'Vp' [L]
E = 0.2; % [L min^-1]
tp = 6;  % min
ti = 100;% min
td = 36;% min
Rm = 210;% [mU min^-1]{Lui 2008}
% p.Rm = 21;% [mU min^-1]{Tolic 2000}
a1 = 300; %mg/L
C1 = 2000;% mg/L
C2 = 144;% mg/L
C3 = 1000;% mg/L
C4 = 80;% mU/L
C5 = 26;% mU/L
Ub = 72;% mg/min
U0 = 40;% mg/min
Um = 940;% mg/min
Rg = 180;% mg/min 
alpha = 0.29;% L/mU
beta = 1.77;
%% Plots
out = sim("Glucose_model_Final")
Gul=(out.G)/100;
Ip=out.Ip;
time=out.tout;
figure
subplot(2,1,1)
plot(time,Gul,'b')
%xlabel('time (min)');
ylabel('glucose (mg/dl)')
subplot(2,1,2)
plot(time,Ip,'r')
xlabel('Time (min)');
ylabel('Insulin (mU/l)')