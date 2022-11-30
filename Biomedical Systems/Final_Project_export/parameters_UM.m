function p = parameters_UM()
    p.Vp = 3;  %'Vp' [L] 
    p.Vi = 11; %'Vp' [L] 
    p.Vg = 10; %'Vp' [L]
    p.E = 0.2; % [L min^-1]
    % p.E = 0.2; % [L min^-1]
    p.tp = 6;  % min
    p.ti = 100;% min
    p.td = 36;% min
    p.Rm = 210;% [mU min^-1]{Lui 2008}
    % p.Rm = 21;% [mU min^-1]{Tolic 2000}
    p.a1 = 300; %mg/L
    p.C1 = 2000;% mg/L
    p.C2 = 144;% mg/L
    p.C3 = 1000;% mg/L
    p.C4 = 80;% mU/L
    p.C5 = 26;% mU/L
    p.Ub = 72;% mg/min
    p.U0 = 40;% mg/min
    p.Um = 940;% mg/min
    p.Rg = 180;% mg/min 
    p.alpha = 0.29;% L/mU
    p.beta = 1.77;
end

