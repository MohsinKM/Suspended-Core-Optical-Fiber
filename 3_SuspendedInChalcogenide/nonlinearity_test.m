load sus17zoom50
Ex=Ex_end;
Ey=Ey_end;
ixy=Ixy_end;
ptot=Ptotal;
load corxy_Zoom50
cor=corxy;

aeff=effectivearea(ixy,wave,ptot,cor);
gamma2=2*pi./(wave.*aeff).*1.2e-17

load analysis
ptot=Ptotal1;
ixy=Ixy_end1;
load corxy_Zoom50
cor=corxy;
load refractive_index_zoom50
refractive_index=n;
gamma1=nonlinearity(ixy,wave,ptot,cor,refractive_index)