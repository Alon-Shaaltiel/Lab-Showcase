

kLM00rel=kLM00(kLM00>470);
ampLM00rel=ampLM00(kLM00>470);
ampLM00rel=ampLM00rel-min(ampLM00rel);
QLM00=trapz(kLM00rel,ampLM00rel);
plot(kLM00rel,ampLM00rel);
%CO
kLM00relCO=kLM00rel(kLM00rel>2028 & kLM00rel<2238);
ampLM00relCO=ampLM00rel(kLM00rel>2028 & kLM00rel<2238);
QLM00relCO=trapz(kLM00relCO,ampLM00relCO);


%CO2 there are 2 regions where CO2 absorbs light
%region 1
kLM00relCO2_1=kLM00rel(kLM00rel>2248 & kLM00rel<2402);
ampLM00relCO2_1=ampLM00rel(kLM00rel>2248 & kLM00rel<2402);
%region 2
kLM00relCO2_2=kLM00rel(kLM00rel>604 & kLM00rel<705);
ampLM00relCO2_2=ampLM00rel(kLM00rel>604 & kLM00rel<705);
%region 3
kLM00relCO2_3=kLM00rel(kLM00rel>717 & kLM00rel<724);
ampLM00relCO2_3=ampLM00rel(kLM00rel>717 & kLM00rel<724);


QLM00relCO2=trapz(kLM00relCO2_1,ampLM00relCO2_1)+trapz(kLM00relCO2_2,ampLM00relCO2_2)+trapz(kLM00relCO2_3,ampLM00relCO2_3);

%HCN
kLM00relHCN=kLM00rel(kLM00rel>710 & kLM00rel<716);
ampLM00relHCN=ampLM00rel(kLM00rel>710 & kLM00rel<716);
QLM00relHCN=trapz(kLM00relHCN,ampLM00relHCN);

%Methanol
kLM00relMethanol=kLM00rel(kLM00rel>1000 & kLM00rel<1080);
ampLM00relMethanol=ampLM00rel(kLM00rel>1000 & kLM00rel<1080);
QLM00relMethanol=trapz(kLM00relMethanol,ampLM00relMethanol);

%ethylene
kLM00relethylene=kLM00rel(kLM00rel>901 & kLM00rel<997);
ampLM00relethylene=ampLM00rel(kLM00rel>901 & kLM00rel<997);
QLM00relethylene=trapz(kLM00relethylene,ampLM00relethylene);

%isoprene
kLM00relisoprene=kLM00rel(kLM00rel>889 & kLM00rel<897);
ampLM00relisoprene=ampLM00rel(kLM00rel>889 & kLM00rel<897);
QLM00relisoprene=trapz(kLM00relisoprene,ampLM00relisoprene);

%Methane- two regions 
kLM00relMethane_1=kLM00rel(kLM00rel>1300 & kLM00rel<1307);
ampLM00relMethane_1=ampLM00rel(kLM00rel>1300 & kLM00rel<1307);
kLM00relMethane_2=kLM00rel(kLM00rel>2820 & kLM00rel<3200);
ampLM00relMethane_2=ampLM00rel(kLM00rel>2820 & kLM00rel<3200);
QLM00relMethane=trapz(kLM00relMethane_1,ampLM00relMethane_1)+trapz(kLM00relMethane_2,ampLM00relMethane_2);



%Acetaldehyde
%Difficult to estimate, however a wide peak can be seen in the region
%1720-1780 which is covered by thinner peaks created by acetone and acrolein
%Water etc
kLM00relWATER=kLM00rel(kLM00rel>1325 & kLM00rel<1994);
ampLM00relWATER=ampLM00rel(kLM00rel>1325 & kLM00rel<1994);
QLM00relWATER=trapz(kLM00relWATER,ampLM00relWATER);