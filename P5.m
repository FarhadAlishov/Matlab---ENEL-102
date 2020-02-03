function [x] = P5(w,R,L,C)
    x=(180/pi)*angle(R./(R+1j.*w.*L+1./(1j.*w.*C)));
end
