% a3q3.m
% Code for running Jacobi and G-S iterations for Question 3 on Assignment 3

% A = [9 -9 9; -9 10 -10; 9 -10 14]; b = A*[1;1;1];
A = [300 1 1; 2 5 2; 3 3 7]; b = A*[1;1;1];
format long

%N = diag(diag(A)); P = N-A;    %Jacobi iteration -- N is the diagonal part of A
N = tril(A); P = N-A;           %G-S iteration -- N is the lower triangular part of A

%Common to both iterations
x = zeros(size(b)); 
M = inv(N)*P  
c = inv(N)*b;


fprintf('eigenvalues?')
eig(M)

%Perform iteration
for j = 1:1
    x = M*x + c;
    fprintf('It #%d\t x = ', j); 
    fprintf('%1.8f ',x);
    fprintf('\n');
end