%{
    ENEL 102 Assignment 2
    Authored by: Liam Wrubleski
    Date: August 9, 2017
    Protected under GPL v3
%}

%% Question 1
f=@(x,y)sum(sin(x.^(1:5))+3*y.^(1:5));
z=f(1,2)
% Expected output: 
% z =
% 
%   190.2074

%% Question 2
x=linspace(-1,1,400);
y=linspace(0.5,0.5,400);
% There is probably a better way to do this,
% but this is an easy hack.
z=arrayfun(f,x,y);
f22 = figure('Name', 'Assignment 2, Question 2');
figure(f22);
plot(z,x);
title("f(x,y) for |x| <= 1, y=0.5");
xlabel("x");
ylabel("z");
% Expected output:
% Included as images/A2Q2.jpg

%% Question 3

% function [m] = H(w, R, L, C)
%     m = abs(R./(R+1j.*w.*L+1./(1j.*w.*C)));
% end

% Expected output:
% None.
% Obviously, this won't work unless the
%  function is in its own file. This is how it
%  could be written.

%% Question 4

f24 = figure('Name', 'Assignment 2, Question 4');
figure(f24);
subplot(2,1,1);
w=linspace(0,10);
m=H4(w);
plot(m,w);
xlabel("Frequency, \omega");
ylabel("Frequency response");
subplot(2,1,2);
w=10.^linspace(log10(.01), log10(100));
m=H(w);
semilogx(w, x);
xlabel("Log(Frequency), log_{10} (\omega)");
ylabel("Frequency response");

% function [m] = H4(w)
%     m = H(w, 10, 1, 1);
% end
% OR
% function [m] = H4(w)
%     R = 10;
%     L = 1;
%     C = 1;
%     m = abs(R./(R+1j.*w.*L+1./(1j.*w.*C)));
% end

% Expected output:
% Included as images/A2Q4.jpg

%% Question 5
% function [x] = P(w, R, L, C)
%     x = angle(R./(R+1j.*w.*L+1./(1j.*w.*C)));
% end
f25 = figure('Name', 'Assignment 2, Question 5');
figure(f25);
w = 10.^linspace(log10(.01), log10(100));
x = P5(w, 10, 1, 1);
semilogx(w,x);
xlabel("\omega");
ylabel("\Theta (\omega)");

% Expected output:
% Included as images/A2Q5.jpg

%% Question 6

% function [x] = P(w)
%     global R L C;
%     x=angle(R./(R+1j.*w.*L+1./(1j.*w.*C)));
% end
w=10.^linspace(log10(.01), log10(100));
global L6 C6 R6;
L6=1;
C6=1;
R6=0.1;
x=P6(w);
f26 = figure('Name', 'Assignment 2, Question 6');
figure(f26);
xlabel("Log(frequency), log\_{10}(\omega)");
ylabel("\Theta(\omega)");
semilogx(w,x);

% Expected output:
% Included as images/A2Q6.jpg

%% Question 7
% My answer: Global variables are useful
% because they allow you to change the 
% operation of an entire section of code, 
% while only changing a single variable
% value. However, overuse of global variables
% can make code impossible to read locally,
% and means that any places where similar
% code exists require the same code to be
% retyped, as opposed to functions.

%% Question 8
% function [x] = D(w, R, L, C)
%     x1 = P(w, R, L, C);
%     x2 = P(w+.01, R, L, C);
%     x = -(x2-x1)/.01;
% end
% OR
% function [x] = D(w, R, L, C)
%     x1 = angle(R./(R+1j.*w.*L+1./(1j.*w.*C)));
%     x2 = angle(R./(R+1j.*(w+.01).*L+1/(1j.*(w+.01).*C)));
%     x = -(x2-x1)/.01;
% end

z=D(1,1,1,1)

% Expected output:
% z =
% 
%     1.9898

%% Question 9
% Require that D is defined
% function [x] = rf(R,L,C)
%     wr = 1/sqrt(LC);
%     x = D(wr, R, L, C);
% end
% OR
% function [x] = rf(R,L,C)
%     wr = 1/sqrt(L*C);
%     w1 = wr + .01;
%     x1 = angle(R./(R+1j.*wr.*L+1./(1j.*wr.*C)));
%     x2 = angle(R./(R+1j.*w1.*L+1./(1j.*w1.*C)));
%     x = -(x2-x1)/.01;
% end
f28 = figure('Name', 'Assignment 2, Question 8');
R = linspace(.1,1);
wr = rf(R, 1, 1);
plot(R, wr);
xlabel("Resistance, \Omega");
ylabel("Delay");

% Expected output:
% Included as images/A2Q9.jpg
