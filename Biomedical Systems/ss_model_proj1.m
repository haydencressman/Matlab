clc
close all
sim('project1_sim')

%temp = Simulink.SimulationOutput;
% read input and output data
ut=ans.u; %input
y1=ans.y1; %output
y2=ans.y2; %output
y3=ans.y3; %output
y4=ans.y4; %output
y5=ans.y5; %output
time = ans.tout; %time
%form plots
figure
plot(ut,'g');
hold on
plot(y1,'r');
hold on
plot(y2,'b');
hold on
plot(y3,'m');
hold on
plot(y4,'d');
hold on
plot(y5,'p');
hold off;
