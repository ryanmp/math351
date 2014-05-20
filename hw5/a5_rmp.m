%a5


figure(1);
title(''); ylabel('y'); xlabel('x');


x=0:.1:2; 

plot(x,x.^2 - 2.*x.*exp(-x) + exp(-2.*x),'b-','LineWidth',2);

%legend('data','quadratic fit','exponential fit','power fit');
