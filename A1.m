%{
    ENEL 102 Assignment 1
    Authored by: Liam Wrubleski
    Date: August 4, 2017
    Protected under GPL v3
%}

%% Question 1
x = (0.2^5.7) * ((tan(0.2))^3) * exp(2.7) + sin(0.1)
% Expected output: 
% x =
%
%     0.0998

%% Question 2
x = sqrt(3); z = exp(1/2); y = 0.3*x^2+sqrt(x*z); v = sqrt(cos(x*y*z))
% Expected output:
% v =
%
%     0.6651

%% Question 3
x = -2; y = 3; z = [x^2 x*y^2 exp(sqrt(x))]
% Expected output:
% z =
%
%    4.0000 + 0.0000i -18.0000 + 0.0000i   0.1559 + 0.9878i

%% Question 4
x = -2; y = 3; z = [x^2 x*y^2 exp(sqrt(x))];
mag = abs(z), ang = (180/pi) .* angle(z)
% Expected output:
% mag =

%      4    18     1


% ang =

%          0  180.0000   81.0285

%% Question 5
n = 52; r = 4; combs = factorial(n) / (factorial(r) * factorial(n-r))
% Expected output:
% combs =
% 
%       270725

%% Question 6
x = 1; y = 2; t = [x x*y sin(x) x/y]; z = diag(t)
% Expected output:
% z =
%
%     1.0000         0         0         0
%          0    2.0000         0         0
%          0         0    0.8415         0
%          0         0         0    0.5000

%% Question 7
x = 1; y = 2; t = [x x*y sin(x) x/y];z = ([1;1;1;1] * t) .* eye(4)
% Expected output:
% z =
%
%     1.0000         0         0         0
%          0    2.0000         0         0
%          0         0    0.8415         0
%          0         0         0    0.5000

%% Question 8
x = linspace(-200, 100, 301); y = 3.*(x.^2)+2;Q=[x;y];
z=Q*Q'
% Expected output:
% z =
%
%    1.0e+11 *
%
%     0.0000   -0.0114
%    -0.0114    6.0171

%% Question 9
x = linspace(-2,4,7);
y = x.^3 + 2.*(x.^2) + x; y'
% Expected output
% ans =

%     -2
%      0
%      0
%      4
%     18
%     48
%    100

%% Question 10
u=[-3 8 -2];v=[6.5 -5 -4]; w=[1 -1 -1];
Q=(dot(u,v))^2 * (cross(cross(u,v),w))
% Expected output:
% Q =
%
%    1.0e+05 *
%
%    -0.4447   -1.3192    0.8745

%% Question 11
  P = linspace(1,50,50);
  X = sum(vpa((1/2).^P(1:10))),Y=sum(vpa((1/2).^P(1:20))),Z=sum(vpa((1/2).^P))
% Expected output:
% X =
%  
% 0.9990234375
%  
%  
% Y =
%  
% 0.99999904632568359375
%  
%  
% Z =
%  
% 
% 0.99999999999999911182158029987477

%% Question 12
X = [1 2 3; 0 7 7; 1 2 1]; Y = [2 2 3; 7 7 0; 1 2 1];
Q = X\(Y + X*X)
% Expected output:
% Q =
% 
%     0.5000    2.0000    5.0000
%     0.5000    8.0000    6.0000
%     1.5000    2.0000    2.0000

%% Question 12 - 2
A = [4 1 1; 2 7 13; 3 0 -1]; b = [3;4;11];
Q = A\b
% Expected output:
% Q =
% 
%    -6.1250
%    56.8750
%   -29.3750

%% Question 13
F = zeros(1,25); F(2) = 1;
for i = 3:25
    F(i) = F(i-1) + F(i-2);
end
F
% Expected output: 
%   Columns 1 through 9
% 
%            0           1           1           2           3           5           8          13          21
% 
%   Columns 10 through 18
% 
%           34          55          89         144         233         377         610         987        1597
% 
%   Columns 19 through 25
% 
%         2584        4181        6765       10946       17711       28657       46368

%% Question 14
F = zeros(1,25); F(2) = 1;
for i = 3:30
    F(i) = F(i-1) + F(i-2);
end
f1=figure('Name', 'Assignment 1, Question 14');
figure(f1);
plot(2:30,log(F(2:30)));
ylabel("The log of the nth Fibonacci number");
xlabel("n");
% Expected output:
% Included as images/A1Q14.jpg

%% Question 15
t = linspace(0,10); 
x = (3.*(t.^1.3))./(1+t.^3); 
y = (3.*(t.^2))./(1+t.^3);
f2=figure('Name', 'Assignment 1, Question 15');
figure(f2);
subplot(2,1,1); 
plot(t,x,t,y);
xlabel("t");
ylabel("x,y");
subplot(2,1,2);
plot(x,y);
xlabel("x");
ylabel("y");
% Expected output:
% Included as images/A1Q15.jpg
