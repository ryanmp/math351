%interpdemo.m
%shows an example of the Lagrange interpolating polynomial of degree 2 for
%f(x) = e^(2x)-x, using the Lagrange formulation.

f = @(x) exp(2*x)-x;
x = [1 1.25 1.6];
y = f(x);

P_2 = @(t) y(1)*(t-x(2)).*(t-x(3))/0.15 + y(2)*(t-x(1)).*(t-x(3))/(-0.0875) + y(3)*(t-x(1)).*(t-x(2))/0.21;

xx = 0.95:0.01:1.65;
%xx = 0:0.01:3;
plot(xx,f(xx),'k',xx,P_2(xx),'r','LineWidth',2); legend('f(x)','P_2(x)');
axis tight; grid on;