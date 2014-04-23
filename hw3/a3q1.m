%a3q1.m
% data for question 1 on assignment 3

A = [1 -6 7 -9; 1 -5 0 0; 0 1 -5 0; 0 0 1 -5];
x = ones(4,1);
b = A*x;
b_tilde = b + 0.01*[-1; 1; -1; 1];

x_tilde = A\b_tilde;

fprintf('%1.8f \n',b);
fprintf('%1.8f \n',b_tilde);
fprintf('%1.8f ',x_tilde);