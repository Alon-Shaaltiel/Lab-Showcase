kblow=gasco2blow{:,1};
ampblow=gasco2blow{:,2};
ampblow=ampblow-min(ampblow);


iblow = find(kblow>2270 & kblow<2400);

ampblowpeaks=ampblow(iblow);
kblowpeaks=kblow(iblow);

Qblow=trapz(flip(kblowpeaks),flip(ampblowpeaks));
deltakblow=kblow(1)-kblow(2);
derivativeoneblow=diff(ampblowpeaks)/deltakblow;
derivativetwoblow=diff(derivativeoneblow)/deltakblow;
plot(kblowpeaks(1:66),derivativetwoblow);
Errblow=(kblowpeaks(1)-kblowpeaks(end))^3/(12*length(kblowpeaks)^2)*max(derivativetwoblow);

plot(kblowpeaks,ampblowpeaks);
hold on;



kair=gasco2outside{:,1};
ampair=gasco2outside{:,2};
ampair=ampair-min(ampair);


iair = find(kair>2270 & kair<2400);

ampairpeaks=ampair(iair);
kairpeaks=kair(iair);

Qair=trapz(flip(kairpeaks),flip(ampairpeaks));
deltakair=kair(1)-kair(2);
derivativeoneair=diff(ampairpeaks)/deltakair;
derivativetwoair=diff(derivativeoneair)/deltakair;
Errair=(kairpeaks(1)-kairpeaks(end))^3/(12*length(kairpeaks)^2)*max(derivativetwoair);

plot(kairpeaks,ampairpeaks);
hold on;

Ratio=Qblow/Qair