%{
    ENEL 102 Assignment 4
    Authored by: Liam Wrubleski
    Date: October 28, 2017
    Protected under GPL v3
%}

% Expected outputs are not complete, see assignment 4 word document for my answers

%% Question 1
f41 = figure('Name', 'Assignment 4, Question 1');
figure(f41);
f = @(x) exp(0.45*x)+2*x.^3+2;
z = fzero(f,0)
fplot(f,[-1.1,-1.09]);

%% Question 2
f42 = figure('Name', 'Assignment 4, Question 2');
figure(f42);
f = @(x) exp(0.45*x)-x.^2+4;
fplot(f,[-2.5,10.5]);
ylim([-1,1]);

%% Question 3
f431 = figure('Name', 'Assignment 4, Question 3, Plot 1');
figure(f431);
f = @(x) exp(0.45*x)-x.^2+4;
z = zeros(31,1);
for i = -15:15
    z(i+16) = fzero(f,i);
end
plot(-15:15,z);
f432 = figure('Name', 'Assignment 4, Question 3, Plot 2');
figure(f432);
fplot(f,[-2.5,10.5]);
ylim([-1,1]);
hold on;
plot(z(5),0,'ob',z(18),0,'ob',z(31),0,'ob');
hold off;

%% Question 4
f44 = figure('Name', 'Assignment 4, Question 4');
figure(f44);
i = @(v) 0.001*(exp(6*v)-1);
fplot(i,[0,1]);
f = @(x)0.001*(exp(6*(1-200*x))-1)-x;
i=fzero(f,1)

%% Question 5
% part a
options = optimset('Display','iter');
i=fzero(f,1,options)
% part b
options = optimset(options,'TolFun',1.0e-8);
i=fzero(f,1,options)

%% Question 7
f = @(x) [x(1)^2 + x(2)^2 - 1; x(1) - x(2)];
options = optimset('Display','off');
fsolve(f,[1;1],options)
fsolve(f,[-1;-1],options)

%% Question 8
f = @(x) [x(1)*x(2)-4;x(1)*x(3)-3;x(1)*x(2)+x(3)-5];
fsolve(f,[0;0;0])

%% Question 9
options = optimset('MaxFunEval',1000,'Display','off');
    % Set up options
        % larger MaxFunEval makes getting an answer more likely
        % Display off turns off fsolve text output
f = @(v) [2+v(1)^2-v(2);v(3)*cos(2*v(3))-v(1);v(3)*sin(2*v(3))-v(2)];
    % v = [x;y;t]
    % f = [
    %       2+x^2-y
    %       t*cos(2*t)-x
    %       t*sin(2*t)-y
    % ];
    % when f is equal to the zero vector, we are on both the parabola and
    % the spiral.
a = [0;0;0];
    % for saving the last solution
for t = 1:0.1:11 
    % temp variable for starting position
    n=fsolve(f,[t*cos(2*t);t*sin(2*t);t],options);
        % solve the system, starting from a point on the spiral, that
        % progresses clockwise around the spiral
    if norm(a-n) > 0.01
        % if this solution is substantially different from the last
        % solution
        if norm(f(n)) < 0.01
            % and this solution puts the function value very close to 0
            disp('----------------------------------------------');
            x = n(1), y = n(2)
                % display the solution information
            a = n;
                % save the solution
        end
    end
end
