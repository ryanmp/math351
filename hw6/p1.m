
figure(1);
title(''); ylabel('y'); xlabel('x');

x=pi*(-1:.01:1); 

plot(x,cos(x/2),'r-','LineWidth',2); hold on;
plot(x,(-x.^2 + pi.^2) / pi.^2,'b-','LineWidth',2);


legend('cos(x/2)','P_n(x)');