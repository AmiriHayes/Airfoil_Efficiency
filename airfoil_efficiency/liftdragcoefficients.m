t= ; %thickness
h= ; %max camber
l= ; %chord length (m)
v= ; %velocity (m/s)
p= ; %air density

L=[# # # # #]; %Values obtained from simulation (for experimental)
D=[# # # # #]; %Values obtained from simulation (for experimental)

% declares values for graphs and tables as an array
cltheoretical = [0 0 0 0 0];
clexperimental = [0 0 0 0 0];
itheoretical = [0 0 0 0 0];
ktheoretical = [0 0 0 0 0];
dtheoretical = [0 0 0 0 0];
dexperimental = [0 0 0 0 0];
a = [0 5 10 15 20]; %angle of attack
alphar = a.*( pi/180); %Converts from degrees to radians

for i = 1:5
% symmetrical coefficient of lift theoretical and experimental
cltheoretical(i) = 2*pi*(1+ (4/ (3*(sqrt(3))))) * (t/l) * ((alphar(i))+((2*h)/l));
clexperimental(i) = L(i) / (0.5*p*vˆ2*l);
% induced drag theoretical
itheoretical(i) = ( L(i)*sin(alphar(i)) ) / (0.5*p*vˆ2*l);
% skin friction drag theoretical
ktheoretical(i) = ( L(i)*sin(alphar(i)) ) / (0.5*p*vˆ2*l);
% drag theoretical and experimental
dtheoretical(i) = itheoretical(i)+ktheoretical(i);
dexperimental(i)= D(i)/(0.5*p*vˆ2*l);
end

% creates a simple table with all the information
airfoilInfo = table(a, cltheoretical, clexperimental, dtheoretical, dexperimental);

%plots equation-based coefficient of lift values against simulation-obtained ones
plot(alpha, cltheoretical)
hold on
plot(alpha, clexperimental)
hold off

%plots equation-based coefficient of drag values against simulation-obtained ones
plot(alpha, dtheoretical)
hold on
plot(alpha, dexperimental)
hold off
