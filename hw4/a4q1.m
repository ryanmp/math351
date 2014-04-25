%a4q1.m
%Script file for fitting a quadratic function to data related MPG to horsepower

% data containing MPG (y) as a function of horsepower (x)
load a4q1
format long

%plot the data as discrete points
figure(1);
plot(x,y,'b.'); hold on;
title('MPG vs horsepower'); ylabel('MPG'); xlabel('HP');

%quadratic function
A = [ones(size(x)) x x.^2];

coeffs = A\y
figure(1); plot(x,A*coeffs,'r-'); hold off;


% FILL IN CODE FOR EXPONENTIAL/POWER FIT HERE
