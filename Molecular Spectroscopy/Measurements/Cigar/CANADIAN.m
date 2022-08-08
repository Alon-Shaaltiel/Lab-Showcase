
kCCrel=kCC(kCC>470);
ampCCrel=ampCC(kCC>470);
ampCCrel=ampCCrel-min(ampCCrel);
QCC=trapz(kCCrel,ampCCrel);
plot(kCCrel,ampCCrel);
hold on;


%CO
kccCO=kCCrel(kCCrel>2028 & kCCrel<2238);
ampccCO=ampCCrel(kCCrel>2028 & kCCrel<2238);
QccCO=trapz(kccCO,ampccCO);


%CO2 there are 2 regions where CO2 absorbs light
%region 1
kccCO2_1=kCCrel(kCCrel>2248 & kCCrel<2402);
ampccCO2_1=ampCCrel(kCCrel>2248 & kCCrel<2402);
%region 2
kccCO2_2=kCCrel(kCCrel>604 & kCCrel<705);
ampccCO2_2=ampCCrel(kCCrel>604 & kCCrel<705);
%region 3
kccCO2_3=kCCrel(kCCrel>717 & kCCrel<724);
ampccCO2_3=ampCCrel(kCCrel>717 & kCCrel<724);


QccCO2=trapz(kccCO2_1,ampccCO2_1)+trapz(kccCO2_2,ampccCO2_2)+trapz(kccCO2_3,ampccCO2_3);



%HCN
kccHCN=kCCrel(kCCrel>710 & kCCrel<716);
ampccHCN=ampCCrel(kCCrel>710 & kCCrel<716);
QccHCN=trapz(kccHCN,ampccHCN);

%Methanol
kccMethanol=kCCrel(kCCrel>1000 & kCCrel<1080);
ampccMethanol=ampCCrel(kCCrel>1000 & kCCrel<1080);
QccMethanol=trapz(kccMethanol,ampccMethanol);

%ethylene
kccethylene=kCCrel(kCCrel>901 & kCCrel<997);
ampccethylene=ampCCrel(kCCrel>901 & kCCrel<997);
Qccethylene=trapz(kccethylene,ampccethylene);

%isoprene
kccisoprene=kCCrel(kCCrel>889 & kCCrel<897);
ampccisoprene=ampCCrel(kCCrel>889 & kCCrel<897);
Qccisoprene=trapz(kccisoprene,ampccisoprene);

%Methane- two regions 
kccMethane_1=kCCrel(kCCrel>1300 & kCCrel<1307);
ampccMethane_1=ampCCrel(kCCrel>1300 & kCCrel<1307);
kccMethane_2=kCCrel(kCCrel>2820 & kCCrel<3200);
ampccMethane_2=ampCCrel(kCCrel>2820 & kCCrel<3200);
QccMethane=trapz(kccMethane_1,ampccMethane_1)+trapz(kccMethane_2,ampccMethane_2);



%Acetaldehyde
%Difficult to estimate, however a wide peak can be seen in the region
%1720-1780 which is covered by thinner peaks created by acetone and acrolein
%Water etc
kccWATER=kCCrel(kCCrel>1325 & kCCrel<1994);
ampccWATER=ampCCrel(kCCrel>1325 & kCCrel<1994);
QccWATER=trapz(kccWATER,ampccWATER);

