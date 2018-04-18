clc
clear
a = -10;
b = 10;

x = [FungsiR(a,b) FungsiR(a,b)]

% %best so far
E = Fungsi(x(1,1),x(1,2));
T = 100000;
while T>0
    x = [FungsiR(a,b) FungsiR(a,b)];
    En = Fungsi(x(1,1),x(1,2));
    deltaE = En - E;
    if deltaE < 0
        E = En;
    else
        p = exp(-deltaE/T);
        teta = (1-0).*rand(1,1)+0;
        if teta < p
            x = [FungsiR(a,b) FungsiR(a,b)]
        end
    end
    T = T * 0.999;
end
disp('Best So Far')
disp(E)