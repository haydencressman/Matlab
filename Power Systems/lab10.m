r1 = 0;
r2 = 1200;
r3 = 1200;

Xc = 1200;
Xl = 120;

Rload = r1 + (1/r2 + 1/r3)^(-1);

Ztot = (1/Rload + 1/Xc)^(-1);
Ztot = Ztot + Xl;
Ztot = (1/Ztot + 1/Xc)^(-1);
Ztot = (1/Ztot + 1/Xc)^(-1);
Ztot = Ztot + Xl;
Ztot = (1/Ztot + 1/Xc)^(-1);

P = (152^2)/Rload;
