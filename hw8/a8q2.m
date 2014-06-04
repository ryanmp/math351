% Data for question 2 of Assignment 8.

%The three functions we are integrating:
f1 = @(x) sin(x).*exp(x);             %integrate between 0 and pi
f2 = @(x) 1./(2-cos(pi*x));           %integrate between -2 and 2
f3 = @(x) sqrt(1-abs(x));             %integrate between -1 and 1

%the true values of each integral
truth1 = 0.5*(1+exp(pi));          
truth2 = 4*sqrt(3)/3;
truth3 = 4/3;

n = 6;

format long

% two approxes for f1
result1 = romberg(f1, 0, pi, n);
result1(6,1) - truth1
result1(6,6) - truth1

result2 = romberg(f2, -2, 2, n);
result2(6,1) - truth2
result2(6,6) - truth2

result3 = romberg(f3, -1, 1, n);
result3(6,1) - truth3
result3(6,6) - truth3

