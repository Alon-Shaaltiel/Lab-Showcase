
kGC=kCC(kCC>470);
ampGC=ampGC(kCC>470);
ampGC=ampGC-min(ampGC);
QGC=trapz(kGC,ampGC);
%CO
kgcCO=kGC(kGC>2028 & kGC<2238);
ampgcCO=ampGC(kGC>2028 & kGC<2238);
QgcCO=trapz(kgcCO,ampgcCO);
plot(kGC,ampGC);


%CO2 there are 2 regions where CO2 absorbs light
%region 1
kgcCO2_1=kGC(kGC>2248 & kGC<2402);
ampgcCO2_1=ampGC(kGC>2248 & kGC<2402);
%region 2
kgcCO2_2=kGC(kGC>604 & kGC<705);
ampgcCO2_2=ampGC(kGC>604 & kGC<705);
%region 3
kgcCO2_3=kGC(kGC>717 & kGC<724);
ampgcCO2_3=ampGC(kGC>717 & kGC<724);


QgcCO2=trapz(kgcCO2_1,ampgcCO2_1)+trapz(kgcCO2_2,ampgcCO2_2)+trapz(kgcCO2_3,ampgcCO2_3);

%HCN
kgcHCN=kGC(kGC>710 & kGC<716);
ampgcHCN=ampGC(kGC>710 & kGC<716);
QgcHCN=trapz(kgcHCN,ampgcHCN);

%Methanol
kgcMethanol=kGC(kGC>1000 & kGC<1080);
ampgcMethanol=ampGC(kGC>1000 & kGC<1080);
QgcMethanol=trapz(kgcMethanol,ampgcMethanol);

%ethylene
kgcethylene=kGC(kGC>901 & kGC<997);
ampgcethylene=ampGC(kGC>901 & kGC<997);
Qgcethylene=trapz(kgcethylene,ampgcethylene);

%isoprene
kgcisoprene=kGC(kGC>889 & kGC<897);
ampgcisoprene=ampGC(kGC>889 & kGC<897);
Qgcisoprene=trapz(kgcisoprene,ampgcisoprene);

%Methane- two regions 
kgcMethane_1=kGC(kGC>1300 & kGC<1307);
ampgcMethane_1=ampGC(kGC>1300 & kGC<1307);
kgcMethane_2=kGC(kGC>2820 & kGC<3200);
ampgcMethane_2=ampGC(kGC>2820 & kGC<3200);
QgcMethane=trapz(kgcMethane_1,ampgcMethane_1)+trapz(kgcMethane_2,ampgcMethane_2);



%Acetaldehyde
%Difficult to estimate, however a wide peak can be seen in the region
%1720-1780 which is covered by thinner peaks created by acetone and acrolein
%Water etc
kgcWATER=kGC(kGC>1325 & kGC<1994);
ampgcWATER=ampGC(kGC>1325 & kGC<1994);
QgcWATER=trapz(kgcWATER,ampgcWATER);