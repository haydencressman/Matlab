%   MLP0226
%   calculate E from a rectangular volume of charge

%   variables
%   xstart,xstop    limits on x for vol charge (m)
%   ystart,ystop
%   zstart,zstop
%   xt,yt,zt        test point (m)
%   rhov            vol charge density, nC/m^3
%   Nx,Ny,Nz        discretization points
%   dx,dy,dz        differential lengths
%   dQ              differential charge, nC
%   eo              free space permittivity (F/m)
%   dEi             differential field vector
%   dEix,dEiy,dEiz  x,y and z components of dEi
%   dEjx,dEjy,dEjz                       of dEj
%   dEkx,dEky,dEkz                       of dEk
%   Etot            total field vector, V/m

clc
clear

%   initialize variables
xstart=0;xstop=4;
ystart=0;ystop=5;
zstart=-6;zstop=0;
xt=0;yt=0;zt=20;
rhov=40e-9;
Nx=10;Ny=10;Nz=10;
eo=8.854e-12;

dx=(xstop-xstart)/Nx;
dy=(ystop-ystart)/Ny;
dz=(zstop-zstart)/Nz;
dQ=rhov*dx*dy*dz;

for k=1:Nz
    for j=1:Ny
        for i=1:Nx
            xv=xstart+(i-0.5)*dx;
            yv=ystart+(j-0.5)*dy;
            zv=zstart+(k-0.5)*dz;
            R=[xt-xv yt-yv zt-zv];
            magR=sqrt((R(1)^2) + (R(2)^2) + (R(3)^2));
            uvR=R/magR;
            dEi=(dQ/(4*pi*eo*magR^2))*uvR;
            dEix(i)=dEi(1);
            dEiy(i)=dEi(2);
            dEiz(i)=dEi(3);
        end
        dEjx(j)=sum(dEix);
        dEjy(j)=sum(dEiy);
        dEjz(j)=sum(dEiz);
    end
    dEkx(k)=sum(dEjx);
    dEky(k)=sum(dEjy);
    dEkz(k)=sum(dEjz);
end
Etotx=sum(dEkx);
Etoty=sum(dEky);
Etotz=sum(dEkz);
Etot=[Etotx Etoty Etotz]
