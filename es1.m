clc
clear all

n = 26;
b = 2;
s = 1;
A = [];
Er = [];

Aott = [];
sott = s;
Erott = [];
x = linspace(1,n, n);

for i=2:n+1
    A = [A, b * s];
    Er = [Er, (abs(pi - A(i-1))/abs(pi))];
    
    Aott = [Aott, sott*b];
    Erott = [Erott, (abs(pi - Aott(i-1))/abs(pi))];
    
    s = sqrt((1-sqrt(1-s^2))/2);
    sott = sqrt((sott^2) / (2 * (1 + sqrt(1 - sott^2))));
    b = 2*b;
end
    
semilogy(x, A, 'b', x, Er, 'r', x, Erott, 'k')



