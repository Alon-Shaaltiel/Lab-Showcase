plot(kLM00,ampLM00);

kLM00=kLM00(kLM00>470);
ampLM00=ampLM00(kLM00>470);
ampLM00=ampLM00-min(ampLM00);
QLM00=trapz(kLM00,ampLM00);
%CO
kLM00CO=kLM00(kLM00>2028 & kLM00<2238);
ampLM00CO=ampLM00(kLM00>2028 & kLM00<2238);
QLM00CO=trapz(kLM00CO,ampLM00CO);


%CO2 there are 2 regions where CO2 absorbs light
%region 1
kLM00CO2_1=kLM00(kLM00>2248 & kLM00<2402);
ampLM00CO2_1=ampLM00(kLM00>2248 & kLM00<2402);
%region 2
kLM00CO2_2=kLM00(kLM00>604 & kLM00<705);
ampLM00CO2_2=ampLM00(kLM00>604 & kLM00<705);
%region 3
kLM00CO2_3=kLM00(kLM00>717 & kLM00<724);
ampLM00CO2_3=ampLM00(kLM00>717 & kLM00<724);


QLM00CO2=trapz(kLM00CO2_1,ampLM00CO2_1)+trapz(kLM00CO2_2,ampLM00CO2_2)+trapz(kLM00CO2_3,ampLM00CO2_3);

%HCN
kLM00HCN=kLM00(kLM00>710 & kLM00<716);
ampLM00HCN=ampLM00(kLM00>710 & kLM00<716);
QLM00HCN=trapz(kLM00HCN,ampLM00HCN);

%Methanol
kLM00Methanol=kLM00(kLM00>1000 & kLM00<1080);
ampLM00Methanol=ampLM00(kLM00>1000 & kLM00<1080);
QLM00Methanol=trapz(kLM00Methanol,ampLM00Methanol);

%ethylene
kLM00ethylene=kLM00(kLM00>901 & kLM00<997);
ampLM00ethylene=ampLM00(kLM00>901 & kLM00<997);
QLM00ethylene=trapz(kLM00ethylene,ampLM00ethylene);

%isoprene
kLM00isoprene=kLM00(kLM00>889 & kLM00<897);
ampLM00isoprene=ampLM00(kLM00>889 & kLM00<897);
QLM00isoprene=trapz(kLM00isoprene,ampLM00isoprene);

%Methane- two regions 
kLM00Methane_1=kLM00(kLM00>1300 & kLM00<1307);
ampLM00Methane_1=ampLM00(kLM00>1300 & kLM00<1307);
kLM00Methane_2=kLM00(kLM00>2820 & kLM00<3200);
ampLM00Methane_2=ampLM00(kLM00>2820 & kLM00<3200);
QLM00Methane=trapz(kLM00Methane_1,ampLM00Methane_1)+trapz(kLM00Methane_2,ampLM00Methane_2);



%Acetaldehyde
%Difficult to estimate, however a wide peak can be seen in the region
%1720-1780 which is covered by thinner peaks created by acetone and acrolein
%Water etc
kLM00WATER=kLM00(kLM00>1325 & kLM00<1994);
ampLM00WATER=ampLM00(kLM00>1325 & kLM00<1994);
QLM00WATER=trapz(kLM00WATER,ampLM00WATER);