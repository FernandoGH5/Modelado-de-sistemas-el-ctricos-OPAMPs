function dx= opamp(t,x)
% definicion de los parametros %
R1=1e3;
R2=1e3;
R3=10e3;
R4=15e3;

C1=0.1e-6;
C2=0.1e-6;

k= 1/1+(R4/R3);
vin=1;
% ----------------------------------------%

dx=zeros(2,1);

a = ((R1*C2+R1*C1+R2*C2)/k)-R1*C1;
b = (k/(R1*R2*C1*C2));

% definicion de las matrices %

% ----------------------------------------%

% definicion de la dinamica del sistema respecto la corriente I%
dx(1) = x(2);
dx(2) = (vin - a*x(2) - (1/k)*x(1))*(b);
% ----------------------------------------%