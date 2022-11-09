syms s t
top1 = [9];
bot1 = [1 0 9];
top2 = [9];
bot2 = [1 6 9];
top3 = [9];
bot3 = [1 2 9];
top4 = [9];
bot4 = [1 9 9];
u = [1/s];
t1 = 0:0.1:10;
t2 = 0:0.1:20;
t3 = 0:0.1:5;
t4 = 0:0.1:5;
%%
tran1 = tf(top1,bot1)
syms s t
tops1 = poly2sym(top1,s);
bots1 = poly2sym(bot1,s);
figure;
step(t1, tran1)
inv1 = ilaplace(tops1/bots1);
p1 = roots(bot1)
%%
tran2 = tf(top2,bot2)
syms s t
tops2 = poly2sym(top2,s);
bots2 = poly2sym(bot2,s);
figure(2);
step(t2, tran2)
inv2 = ilaplace(tops2/bots2);
p2 = roots(bot2)

%%
tran3 = tf(top3,bot3)
syms s t
tops3 = poly2sym(top3,s);
bots3 = poly2sym(bot3,s);
figure(3);
step(t3, tran3)
inv3 = ilaplace(tops3/bots3);
p3 = roots(bot3)

%%
tran4 = tf(top4,bot4)
syms s t
tops4 = poly2sym(top4,s);
bots4 = poly2sym(bot4,s);
figure(4);
step(t4, tran4)
inv4 = ilaplace(tops4/bots4);
p4 = roots(bot4)


%%
% finding the damping ratio (zeta)
% and the natural frequency (omega)
% equ 1
natf1 = sqrt(bot1(3))
damp1 = bot1(2)/(2*natf1)

% equ 2
natf2 = sqrt(bot2(3))
damp2 = bot2(2)/(2*natf2)

% equ 3
natf3 = sqrt(bot3(3))
damp3 = bot3(2)/(2*natf3)

% equ4
natf4 = sqrt(bot4(3))
damp4 = bot4(2)/(2*natf4)