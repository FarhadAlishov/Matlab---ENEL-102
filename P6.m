function [x] = P6(w)
    global L6 C6 R6;
    w, R6, L6, C6
    x=(180/pi).*angle(R6./(R6+1j.*w.*L6+1./(1j.*w.*C6)));
end
