function [m] = H(w, R, L, C)
    m = abs(R./(R+1j.*w.*L+1./(1j.*w.*C)));
end

