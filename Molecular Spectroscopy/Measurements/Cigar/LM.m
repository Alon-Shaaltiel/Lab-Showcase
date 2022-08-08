plot(kLM,ampLM);
kLM=kLM(kLM>470);
ampLM=ampLM(kLM>470);
ampLM=ampLM-min(ampLM);
QLM=trapz(kLM,ampLM);

%CO
kLMCO=kLM(kLM>2006 & kLM<2238);
ampLMCO=ampLM(kLM>2006 & kLM<2238);
QLMCO=trapz(kLMCO,ampLMCO);


%CO2 
kLMCO2=kLM(kLM>2248 & kLM<2500);
ampLMCO2=ampLM(kLM>2248 & kLM<2500);
QLMCO2=trapz(kLMCO2,ampLMCO2);