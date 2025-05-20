% LINEAR ALGEBRA - Leslie Model
% This program calculates the future population distribution 
% using the Leslie matrix model.

clc;
clear;

% Get number of generations (age classes)
x = input('Enter the number of generations (e.g. 3): ');

% Initialize Leslie matrix
L = zeros(x, x);

% Fill survival rates into the Leslie matrix
a = 1;
while a < x
    L(a + 1, a) = input(['Survival rate of generation ' num2str(a) ': ']);
    a = a + 1;
end
L(x, x) = input(['Survival rate of generation ' num2str(a) ': ']);

% Get number of cycles (time steps)
y = input('Enter the number of cycles: ');

% Get initial population of each generation
A = zeros(x, 1);
for b = 1:x
    A(b, 1) = input(['Initial number of generation ' num2str(b) ': ']);
end

% Compute population after y cycles
B = (L ^ y) * A;

% Display result
disp('The new number of each generation is:');
disp(B);
