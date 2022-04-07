clc
clear all

k = linspace(1, 8, 8);
a = -10;
b = -5;

for i=1:8
    f = @(x) x^2 + (10^k(i))*x + 1;
   [x, xk, it] = bisezione(f, a, b, 1e-12);
end