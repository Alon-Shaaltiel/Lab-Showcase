plot(kCC,ampGC);

kGC=kCC(kCC>470);
ampGC=ampGC(kCC>470);
ampGC=ampGC-min(ampGC);
QGC=trapz(kGC,ampGC);
%CO
kgcCO=kCC(kCC>2028 & kCC<2238);
ampgcCO=ampGC(kCC>2028 & kCC<2238);
QgcCO=trapz(kgcCO,ampgcCO);


%CO2 there are 2 regions where CO2 absorbs light
%region 1
kgcCO2_1=kCC(kCC>2248 & kCC<2402);
ampgcCO2_1=ampGC(kCC>2248 & kCC<2402);
%region 2
kgcCO2_2=kCC(kCC>604 & kCC<705);
ampgcCO2_2=ampGC(kCC>604 & kCC<705);
%region 3
kgcCO2_3=kgc(kgc>717 & kgc<724);
ampgcCO2_3=ampgc(kgc>717 & kgc<724);


QgcCO2=trapz(kgcCO2_1,ampgcCO2_1)+trapz(kgcCO2_2,ampgcCO2_2)+trapz(kgcCO2_3,ampgcCO2_3);

%HCN
kgcHCN=kCC(kCC>710 & kCC<716);
ampgcHCN=ampGC(kCC>710 & kCC<716);
QgcHCN=trapz(kgcHCN,ampgcHCN);

%Methanol
kgcMethanol=kCC(kCC>1000 & kCC<1080);
ampgcMethanol=ampGC(kCC>1000 & kCC<1080);
QgcMethanol=trapz(kgcMethanol,ampgcMethanol);

%ethylene
kgcethylene=kCC(kCC>901 & kCC<997);
ampgcethylene=ampGC(kCC>901 & kCC<997);
Qgcethylene=trapz(kgcethylene,ampgcethylene);

%isoprene
kgcisoprene=kCC(kCC>889 & kCC<897);
ampgcisoprene=ampGC(kCC>889 & kCC<897);
Qgcisoprene=trapz(kgcisoprene,ampgcisoprene);

%Methane- two regions 
kgcMethane_1=kCC(kCC>1300 & kCC<1307);
ampgcMethane_1=ampGC(kCC>1300 & kCC<1307);
kgcMethane_2=kCC(kCC>2820 & kCC<3200);
ampgcMethane_2=ampGC(kCC>2820 & kCC<3200);
QgcMethane=trapz(kgcMethane_1,ampgcMethane_1)+trapz(kgcMethane_2,ampgcMethane_2);



%Acetaldehyde
%Difficult to estimate, however a wide peak can be seen in the region
%1720-1780 which is covered by thinner peaks created by acetone and acrolein
%Water etc
kgcWATER=kCC(kCC>1325 & kCC<1994);
ampgcWATER=ampGC(kCC>1325 & kCC<1994);
QgcWATER=trapz(kgcWATER,ampgcWATER);