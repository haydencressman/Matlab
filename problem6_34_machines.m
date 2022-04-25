clc;
clear;

% given values first
% stator resistance values (y connected)

Rstat = .428;

% blocked rotor test data
% brotor = [volt current power]
% s = 1

brotor = [142 43.1 4870];

% no load
% nload = [current power]
% s = 0

nload = [12.8 2310];

% begin calculations

% blocked rotor tests
Req = (brotor(3)/3)/((brotor(2))^2);
Zeq = (brotor(1)/sqrt(3))/(brotor(2));
xeq = sqrt((Zeq^2)-(Req^2));
x1 = .45*(xeq)*(50/12.5);
x2 = (.55*x1)*(50/12.5);

% no load data tests
Protat = nload(2) - 3*Rstat*nload(1)^2;
Rc = ((2300/sqrt(3))^2)/(Protat/3);
Znl = (2300/sqrt(3))/nload(1);
Xm = Znl - x1;

R1 = Rstat;
R2 = Req - R1;

fprintf('R1: %.3f     R2: %.3f \nX1: %.3f     X2: %.3f \nRc: %.3f  Xm: %.3f\n',R1,R2,x1, x2, Rc, Xm);
