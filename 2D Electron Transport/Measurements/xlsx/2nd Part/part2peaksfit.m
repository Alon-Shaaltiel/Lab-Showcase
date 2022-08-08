constant=lsqcurvefit(@part2peaks,[0;0],x,y);
xfit=0:0.1:1.7;
yfit=part2peaks(constant,xfit);
plot(x,y,"b-");
hold on;
plot(xfit,yfit,"r");
grid on;

