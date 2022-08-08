function y = part2peaks(constant,x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
y=constant(1)*x*exp(-x*constant(2))./sinh(x*constant(3))+constant(4);
end