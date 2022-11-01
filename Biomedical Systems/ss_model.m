clc
close all
% read input and output data
ut=out.u; %input
yt=out.y1; %output
time = out.tout; %time
%form plots
figure
plot(time,ut,'g');
hold on
plot(time,yt,'r');
hold off;
