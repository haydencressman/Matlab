%   M-File: MLP0227
%
%   This program modifies ML0204 to find the field
%   at point P(8m,0,0) from a hemispherical
%   distribution of charge given by
%   rhov=120 nC/m^3 from 0 < r < 2m and
%   pi/2 < theta < pi.
%
%   Wentworth, 12/23/02
%
%   Variables:
%       d           y axis distance to test point (m)
%       a           sphere radius (m)
%       dV          differential charge volume where
%                   dV=delta_r*delta_theta*delta_phi
%       eo          free space permittivity (F/m)
%       r,theta,phi spherical coordinate location of
%                   center of a differential charge element
%       x,y,z       cartesian coord location of charge %					element
%       R           vector from charge element to P
%       Rmag        magnitude of R
%       aR          unit vector of R
%       dr,dtheta,dphi  differential spherical elements
%       dEi,dEj,dEk partial field values
%       Etot        total field at P resulting from charge

clc     %clears the command window
clear   %clears variables

%   Initialize variables
eo=8.854e-12;
d=8;a=2;
delta_r=40;delta_theta=72;delta_phi=144;

%   Perform calculation
for k=(1:delta_phi)
    for j=(1:delta_theta)
        for i=(1:delta_r)
            r=i*a/delta_r;
            theta=(pi/2)+j*pi/(2*delta_theta);
            phi=k*2*pi/delta_phi;
            x=r*sin(theta)*cos(phi);
            y=r*sin(theta)*sin(phi);
            z=r*cos(theta);
            R=[d-x,-y,-z];
            Rmag=sqrt((R(1)^2) + (R(2)^2) + (R(3)^2));
            aR=R/Rmag;
            dr=a/delta_r;
            dtheta=pi/delta_theta;
            dphi=2*pi/delta_phi;
            dV=r^2*sin(theta)*dr*dtheta*dphi;
            dQ=120e-9*dV;
            dEi=dQ*aR/(4*pi*eo*Rmag^2);
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
