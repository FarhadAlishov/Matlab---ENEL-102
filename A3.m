%{
    ENEL 102 Assignment 3
    Authored by: Liam Wrubleski
    Date: October 15 , 2017
    Protected under GPL v3
%}

%% Question 1
f31 = figure('Name', 'Assignment 3, Question 1');
figure(f31);
x = linspace(0,3);
y = polyval([0.1 0.1 4 sqrt(5)],x);
plot(x,y);
xlabel("x");
ylabel("0.1x^3 + 0.1x^2 + 4x + \surd{5}");
% Expected output: 
% Included as images/A3Q1.png

%% Question 2
rs = roots([0.1 0.1 4 sqrt(5)]);
t = 0;
for r = 1:3
    if imag(rs(r)) == 0
        t=rs(r);
    end
end
z = polyval([0.1 0.1 4 sqrt(5)],t)

% Expected output:
% 
% z =
% 
%      0

%% Question 3
f = [1 0 1.2 3];
y = conv(f,f)
% Expected output:
%
% y =
% 
%     1.0000         0    2.4000    6.0000    1.4400    7.2000    9.0000

%% Question 4
f34 = figure('Name', 'Assignment 3, Question 4');
figure(f34);
ps = [0 1; 1 1.5; 2 4; 4 7; 6 9];
cs = polyfit(ps(:,1)',ps(:,2)',4)
x = linspace(0,6);
y = polyval(cs,x);
plot(x,y);
xlabel("x");
ylabel("Fitted 4^{th} order curve");
hold on;
for i = 1:size(ps,1)
plot(ps(i,1),ps(i,2),'xr')
end
% Expected output:
% 
% cs =
% 
%     0.0625   -0.7708    2.8750   -1.6667    1.0000
%
% Plot included as images/A3Q4.png

%% Question 5
ps = [0 0; 1 2; 2 5];
nx = exp(ps(:,1)');
cs = polyfit(nx, ps(:,2)',2);
c = cs(1), b = cs(2), a = cs(3)
f = @(x) a + b*exp(x) + c*exp(2*x);
f0 = f(0)
f1 = f(1)
f2 = f(2)
% Expected output:
%
% c =
% 
%    -0.0816
% 
% b =
% 
%     1.4675
% 
% a =
% 
%    -1.3859
% 
% f0 =
% 
%   -2.1788e-15
% 
% f1 =
% 
%     2.0000
% 
% f2 =
% 
%     5.0000

%% Question 6
R = 0.1;
L = 3;
C = 0.1;
Hd = [L*C R*C 1];
poles = roots(Hd);
F = imag(poles(1))*(2*pi)
% Expected value:
%
% F =
% 
%    11.4710

%% Question 7
f37 = figure('Name', 'Assignment 3, Question 7');
figure(f37);
ps = load('Q7data.mat');
ps.x = sort(ps.x);
ps.y = sort(ps.y);
nx = exp(ps.x);
cs = polyfit(nx,ps.y,2);
f = @(x) cs(1)*exp(2*x) + cs(2)*exp(x) + cs(3);
ny = f(ps.x);
plot(ps.x,ps.y,'xr');
hold on;
plot(ps.x, ny);
hold off;
% Expected value:
%
% Included in images/A3Q7.png

%% Question 8
ps = load('Q7data.mat');
ps.x = sort(ps.x);
ps.y = sort(ps.y);
nx = exp(ps.x);
cs = polyfit(nx,ps.y,2);
f = @(x) cs(1)*exp(2*x) + cs(2)*exp(x) + cs(3);
ny = f(ps.x);
err = ps.y - ny;
s = std(err)
% Expected value:
%
% s =
% 
%     0.5713