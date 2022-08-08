k95=p95{:,1};
amp95=p95{:,2};
amp95=amp95-amp95(1554);
i95=find(1000<k95 & k95<1120);
l95=k95(i95);
ampETOH95=amp95(i95);

plot(l95,ampETOH95);
hold on;
Q95=trapz(flip(l95),flip(ampETOH95));
deltak95=k95(1)-k95(2);
derivativeone95=diff(ampETOH95)/deltak95;
derivativetwo95=diff(derivativeone95)/deltak95;
Err95=(l95(1)-l95(end))^3/(12*length(l95)^2)*max(derivativetwo95);


k85=p85{:,1};
amp85=p85{:,2};
amp85=amp85-amp85(1554);
i85=find(1000<k85 & k85<1120);
l85=k85(i85);
ampETOH85=amp85(i85);
plot(l85,ampETOH85);
hold on;
Q85=trapz(flip(l85),flip(ampETOH85));
deltak85=k85(1)-k85(2);
derivativeone85=diff(ampETOH85)/deltak85;
derivativetwo85=diff(derivativeone85)/deltak85;
Err85=(l85(1)-l85(end))^3/(12*length(l85)^2)*max(derivativetwo85);



k75=p75{:,1};
amp75=p75{:,2};
amp75=amp75-amp75(1554);
i75=find(1000<k75 & k75<1120);
l75=k75(i75);
ampETOH75=amp75(i75);
plot(l75,ampETOH75);
hold on;
Q75=trapz(flip(l75),flip(ampETOH75));
deltak75=k75(1)-k75(2);
derivativeone75=diff(ampETOH75)/deltak75;
derivativetwo75=diff(derivativeone75)/deltak75;
Err75=(l75(1)-l75(end))^3/(12*length(l75)^2)*max(derivativetwo75);




k65=p65{:,1};
amp65=p65{:,2};
amp65=amp65-amp65(1554);
i65=find(1000<k65 & k65<1120);
l65=k65(i65);
ampETOH65=amp65(i65);
plot(l65,ampETOH65);
hold on;
Q65=trapz(flip(l65),flip(ampETOH65));
deltak65=k65(1)-k65(2);
derivativeone65=diff(ampETOH65)/deltak65;
derivativetwo65=diff(derivativeone65)/deltak65;
Err65=(l65(1)-l65(end))^3/(12*length(l65)^2)*max(derivativetwo65);



k55=p55{:,1};
amp55=p55{:,2};
amp55=amp55-amp55(1554);
i55=find(1000<k55 & k55<1120);
l55=k55(i55);
ampETOH55=amp55(i55);
plot(l55,ampETOH55);
hold on;
Q55=trapz(flip(l55),flip(ampETOH55));
deltak55=k55(1)-k55(2);
derivativeone55=diff(ampETOH55)/deltak55;
derivativetwo55=diff(derivativeone55)/deltak55;
Err55=(l55(1)-l55(end))^3/(12*length(l55)^2)*max(derivativetwo55);




k45=p45{:,1};
amp45=p45{:,2};
amp45=amp45-amp45(1554);
i45=find(1000<k45 & k45<1120);
l45=k45(i45);
ampETOH45=amp45(i45);
plot(l45,ampETOH45);
hold on;
Q45=trapz(flip(l45),flip(ampETOH45));
deltak45=k45(1)-k45(2);
derivativeone45=diff(ampETOH45)/deltak45;
derivativetwo45=diff(derivativeone45)/deltak45;
Err45=(l45(1)-l45(end))^3/(12*length(l45)^2)*max(derivativetwo45);


ylim([0 0.35]);

legend('96%','85%','75%','65%','55%','40%');
title('IR Spectrum For Different Ethanol Concentrations')
xlabel('k[cm^{-1}]')
ylabel('Absorption Amplitude [1]')
%C=[96,85,75,65,55,40];
%F=[Q95,Q85,Q75,Q65,Q55,Q45];
%scatter(C,F,25,'b','*');
 %   P = polyfit(C,F,1);
  %  yfit = P(1)*C+P(2);
   % hold on;
    %plot(C,yfit,'r-.');



kSUK=SUKTINIS5011{:,1};
ampSUK=SUKTINIS5011{:,2};
ampSUK=ampSUK-ampSUK(1000);
iSUK=find(1000<kSUK & kSUK<1120);
lSUK=kSUK(iSUK);
ampETOHSUK=ampSUK(iSUK);
plot(lSUK,ampETOHSUK);
hold on;
QSUK=trapz(flip(lSUK),flip(ampETOHSUK));
deltakSUK=kSUK(1)-kSUK(2);
derivativeoneSUK=diff(ampETOHSUK)/deltakSUK;
derivativetwoSUK=diff(derivativeoneSUK)/deltakSUK;
ErrSUK=(lSUK(1)-lSUK(end))^3/(12*length(lSUK)^2)*max(derivativetwoSUK);


kTUBI=percentunknown2tubimaybe{:,1};
ampTUBI=percentunknown2tubimaybe{:,2};

iTUBI=find(1000<kTUBI & kTUBI<1120);
lTUBI=kTUBI(iTUBI);
ampETOHTUBI=ampTUBI(iTUBI);
ampETOHTUBI=ampETOHTUBI-min(ampETOHTUBI);
plot(lTUBI,ampETOHTUBI);
hold on;
QTUBI=trapz(flip(lTUBI),flip(ampETOHTUBI));
deltakTUBI=kTUBI(1)-kTUBI(2);
derivativeoneTUBI=diff(ampETOHTUBI)/deltakTUBI;
derivativetwoTUBI=diff(derivativeoneTUBI)/deltakTUBI;
ErrTUBI=(lTUBI(1)-lTUBI(end))^3/(12*length(lTUBI)^2)*max(derivativetwoTUBI);



kUNKnown=percentunknown{:,1};
ampUNKnown=percentunknown{:,2};

iUNKnown=find(1000<kUNKnown & kUNKnown<1120);
lUNKnown=kUNKnown(iUNKnown);
ampETOHUNKnown=ampUNKnown(iUNKnown);
ampETOHUNKnown=ampETOHUNKnown-min(ampETOHUNKnown);
plot(lUNKnown,ampETOHUNKnown);
hold on;
QUNKnown=trapz(flip(lUNKnown),flip(ampETOHUNKnown));
deltakUNKnown=kUNKnown(1)-kUNKnown(2);
derivativeoneUNKnown=diff(ampETOHUNKnown)/deltakUNKnown;
derivativetwoUNKnown=diff(derivativeoneUNKnown)/deltakUNKnown;
ErrUNKnown=(lUNKnown(1)-lUNKnown(end))^3/(12*length(lUNKnown)^2)*max(derivativetwoUNKnown);
