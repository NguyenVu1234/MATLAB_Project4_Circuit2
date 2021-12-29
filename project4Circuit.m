clear;
clc;
close all;
% % calculate output y at input x = -1 by calling the function pbola
% y = pbola(-1)
% % Create the x-vector from -1 to 2
% x = -1:0.001:2;
% % Call the function pbola with input x-vector
% y1 = pbola(x)
% plot(x,y1)
% grid on
% xlabel('x')
% ylabel('y')
% title('y = 2*x^2-3*x+1') 
% 
% % Call the function inside the function pbola(pbola(x))
% y2 = pbola(y1)
% hold on 
% plot(x,y2)
% legend('y1(x)','y2(x)')

% Create the x-vector from 0 to 5
x = 0:0.001:5;
% Call the function theLine
y1 = theLine(3,1,x);

subplot(211);
plot(x,y1)
xlabel('x');
ylabel('y');
title('y1 = (3x+1)(u(x-1)-u(x-4))')
grid on;
legend('y1(x)')


subplot(212);
% Create the x-vector from 0 to 4
x1 = 0:0.001:4;
% Call the function theLine
y2 = theLine(3,1,x1)

plot(x1,y2,'r')
grid on;
xlabel('x');
ylabel('y');
title('y2 = (3x+1)(u(x-1)-u(x-3))');
legend('y2(x)')
ylim([0 15])
hold off;

% % x is in range from -1 to 0
% x0 = -1:0.001:0
% % y = 0
% outRange1 = parabola(0,0,0,x0)
% plot(x0,outRange1)
% hold on
% 
% % x is in range from 0 to 1
% x1 = 0:0.001:1
% % y0 = 2*x - x^2
% y0 = parabola(-1,2,0,x1)
% plot(x1,y0)
% hold on
% % x is in range from 1 to 2
% x2 = 1:0.001:2
% % y1 = y2(x) = -x + 2
% y1 = parabola(0,-1,2,x2)
% plot(x2,y1)
% hold on
% 
% % x is in range from 2 to 3
% x3 = 2:0.001:3
% % y2 = y1(x) = x - 2
% y2 = parabola(0,1,-2,x3)
% plot(x3,y2)
% hold on
% 
% % x is in range from 3 to 4
% x4 = 3:0.001:4
% % y3 = 6*x - x^2 - 8
% y3 = parabola(-1,6,-8,x4)
% plot(x4,y3)
% hold on
% 
% % x is in range 4 to 5
% x5 = 4:0.001:5
% % y = 0
% outRange2 = parabola(0,0,0,x5)
% plot (x5,outRange2)
% grid on
% hold off
% 
% legend('y = 0', 'y = 2*x - x^2', 'y = -x + 2', 'y = x - 2', 'y = 6*x - x^2 - 8', 'y = 0')
% xlabel('x')
% ylabel('y')
% title('y3(x)')
% % Scale from -1 <= x <= 5 and -1 <= y <= 2
% xlim([-1 5]);
% ylim([-1 2]);

% % Given inputs
% f0 = 10000;
% BW = 5000;
% C = 10^-6;
% pt = 1;
% % if the plot toggle value is 1 then make the plot
% if pt == 1
% [mag, phase] = bandPass(f0,BW,C,pt);
% end

