
% ((e^(y/2)/32)/120)((x-0)(x-2)(x-4)(x-6)(x-8)), where x = 3,7
% and y=x or y = x of max( f(x) ) which would be 8
% something like that to get the theoretical error...
% where 0, 2 ... are our nodes
% x is the point we are checking (3 or 7)
% and y is... ? the same point or the place at which f is max?
%
% note: n = 4.. not 5!
% this gives us, -(7 e^(7/2))/256 ~~ -0.905501 for x = 7
% and -(3 e^(3/2))/256 ~~ -0.0525198 for x = 3


xx = [ 0 2 4 6 8 ];
f = @(x) exp(x/2);
yy=f(xx);

% computes the error at 3 and 7
estimate = lagrange_interp(xx,yy,[3 7]);
actual = f([3 7]);

error3 = estimate(1) - actual(1)
error7 = estimate(2) - actual(2)

%now just for kicks, let's plot it
% xx2 = 0:.1:8;
% yy2 = lagrange_interp(xx,yy,[xx2]);
% xx = 0:.1:8;
% f = @(x) exp(x/2);
% yy=f(xx);
% plot(xx,yy,'g-','LineWidth',1); hold on;
% plot(xx2,yy2,'b-','LineWidth',1);

%now let's try it again with the chebyshev points
N = 5;
theta = (2*(1:N)-1)*pi/2/N;   
ret = (cos(theta-pi)*4)+4; % from 0-8

xx = ret;
f = @(x) exp(x/2);
yy=f(xx);

% computes the error at 3 and 7
estimate = lagrange_interp(xx,yy,[3 7]);
actual = f([3 7]);

error3 = estimate(1) - actual(1)
error7 = estimate(2) - actual(2)

