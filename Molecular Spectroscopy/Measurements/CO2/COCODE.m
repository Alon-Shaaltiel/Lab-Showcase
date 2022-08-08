kCO=CO11{:,1};
ampCO=CO11{:,2};
ampCO=ampCO-min(ampCO);
ampCO=ampCO(kCO>2025 & kCO<2233);
deltak=kCO(1)-kCO(2);
kCO=kCO(kCO>2025 & kCO<2233);

plot(kCO,ampCO);
hold on;
title('CO Absorption Lines')
xlabel('k[cm^{-1}]')
ylabel('Absorbance Amp')