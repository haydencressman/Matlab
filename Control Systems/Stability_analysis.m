clc
close all
clear all
%% stability analysis
%  48>K>0
K=10;
num=K;
% D(s)=s^3+6s^2+8s+K
den=[1 6 8 K];
sys=tf(num,den)
% Plotting
time=0:0.1:100;
y = step(sys,time)
figure
plot(time,y,'r')
%% Root locus-Stable system
K=10;
num=K;
% D(s)=s^3+6s^2+8s+K
den=[1 6 8 K];
sys=tf(num,den)
% Plotting
figure;
rlocus(sys)
%% Unstable system-closed-loop
K=100;
num=K;
% D(s)=s^3+6s^2+8s+K
den=[1 6 8 K];
sys=tf(num,den)
% Plotting
figure;
rlocus(sys)
%% Open-loop system
%% Root locus-Stable system
K=100;
num=K;
% D(s)=s^3+6s^2+8s+K
den=[1 6 8 0];
sys=tf(num,den)
% Plotting
figure;
rlocus(sys,'r')
