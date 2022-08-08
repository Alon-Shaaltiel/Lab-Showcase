plot(kMarl,ampMarl);
kMarl=kMarl(kMarl>470);
ampMarl=ampMarl(kMarl>470);

ampMarl=ampMarl-min(ampMarl);
QMarl=trapz(kMarl,ampMarl);
%CO
kMarlCO=kMarl(kMarl>2006 & kMarl<2238);
ampMarlCO=ampMarl(kMarl>2006 & kMarl<2238);
QMarlCO=trapz(kMarlCO,ampMarlCO);


%CO2 
kMarlCO2=kMarl(kMarl>2248 & kMarl<2500);
ampMarlCO2=ampMarl(kMarl>2248 & kMarl<2500);
QMarlCO2=trapz(kMarlCO2,ampMarlCO2);