function [x] = rf(R,L,C)
    wr = 1/sqrt(L*C);
    x = D(wr, R, L, C);
end
% Equivalently, 
% function [x] = rf(R,L,C)
%     wr = 1/sqrt(L*C);
%     w1 = wr + .01;
%     x1 = angle(R./(R+1j.*wr.*L+1./(1j.*wr.*C)));
%     x2 = angle(R./(R+1j.*w1.*L+1./(1j.*w1.*C)));
%     x = -(x2-x1)/.01;
% end