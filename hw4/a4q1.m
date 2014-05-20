%a4q1.m
%Script file for fitting a quadratic function to data related MPG to horsepower

% data containing MPG (y) as a function of horsepower (x)
load a4q1
format long

%plot the data as discrete points
figure(1);
title('MPG vs horsepower'); ylabel('MPG'); xlabel('HP');
plot(x,y,'b.'); hold on;

% QUADRATIC 
A = [ones(size(x)) x x.^2];
coeffs = A\y
figure(1); plot(x,A*coeffs,'r-','LineWidth',2); hold on;

% EXPONENTIAL
A = [ones(size(x)) x];
coeffs = A\log(y);
coeffs(1) = exp(coeffs(1));
coeffs
plot(x,coeffs(1)*exp(coeffs(2)*x),'g-','LineWidth',2); hold on;





% POWER
A = [ones(size(x)) log(x)];
coeffs = A\log(y);
coeffs(1) = exp(coeffs(1));
coeffs
%coeffs(2) = exp(coeffs(2))
plot(x,coeffs(1).*x.^(coeffs(2)),'y-','LineWidth',2);

legend('data','quadratic fit','exponential fit','power fit');
