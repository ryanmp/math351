
% set up plot
figure(1);
title(''); ylabel('y'); xlabel('x');


% matlab's built in method
x = [1 2 3];
y = [1 1 0];
xx=1:0.1:3;
yy = spline(x,y,xx);
plot(x,y,'o',xx,yy,'b-','LineWidth',2); hold on;

% our plot (using the following vals+foos)


% to solve for our 4 unknowns, we need two more equations:
% s1''(x0) = 0 -> 6*d0*(-1+x) = 0, x = 1? 
% s2''(xn) = 0 -> -1.5+6*d1*(-2+x) = 0, x = 3?


%syms b0 b1;

%d1 = 1/4;
%d0 = 0;


%s0 = @(x,b0,d0) 1 + b0.*(x-1) + d0.*(x-1).^3;
%s1 = @(x,b1,d1) 1 + b1.*(x-2) - (.75).*(x-2).^2 + d1.*(x-2).^3;

%s0pp = @(x,d0) 6*d0*(-1+x);
%s1pp = @(x,d1) -1.5+6*d1*(-2+x);

%x0 = 1; xn = 3;

%S = solve(s0(1,b0,d0) == 1, s0(2,b0,d0) == 1, s1(2,b1,d1) == 1, s1(3,b1,d1) == 0, s0pp(x0,d0) == 0, s1pp(xn,d1) == 0);

d0 = 0;
d1 = 1/4;
b0 = 0;
b1 = -1/2;

x0=1:0.1:2;
s0 = @(x) 1 + b0.*(x-1) + d0.*(x-1).^3;
plot(x0,s0(x1),'g-','LineWidth',2); hold on;

x1=2:0.1:3;
s1 = @(x) 1 + b1.*(x-2) - (.75).*(x-2).^2 + d1.*(x-2).^3;
plot(x1,s1(x2),'r-','LineWidth',2); 






