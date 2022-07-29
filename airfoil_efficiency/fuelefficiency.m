t= 130000; %aircraft thrust in Newtons
d= 385881; %aircraft drag in Newtons
l= 61222187; %aircraft lift in Newtons
m= 14968; %airplane mass in kg

o= 10; %angle of attack in degrees
sl= 0; %scaled length of aircraft
s= 0; %scale

c1= 0.13; %coefficient of drag for supersonic airfoil at subsonic speed v
c2 = 0.08; %coefficient of drag for subsonic airfoil at subsonic speed v
g = 1220;

mpg = 1/2.148; %airplane average miles per gallon
v = 205.8; %veloctiy of plane in m/s
y= 0; %boolean variable for fuel efficiency
cl1 = 0.06;
cl2 = 0.26;

%Calculate acceleration in x-direction (thrust/drag)
F11= (t- (d*(c2/c1)));
a11=(F11/m) * cosd(o);
%Calculate distance in x-direction
vx= v*cosd(o);
x= ((vx)ˆ2) / (2*a11);

%Calculate acceleration y-direction (lift/weight)
F21= (l*(cl2/cl1)*sind(o))-(9.81*m);
a21=(F21/m) * sind(o);
%Calculate distance in y-direction
vy=v*sind(o);
y=((vy)ˆ2) / (2*a21);

%Calculate fuel difference
distancem= sqrt((xˆ2)+(yˆ2));
fueleconmorphing = distancem/g;
F12= (t-d);
a12= (F12/m)*cosd(o);
F22= (l*sind(o))-(9.81*m);
a22=(F22/m) * sind(o);
vx=v*cosd(o);
x= ( (vx)ˆ2 ) / (2*a12);
vy=v*sind(o);
y=(vy)ˆ2 / (2*a22);
distancestatic= sqrt(xˆ2+yˆ2);
fueleconstatic = distancestatic/g;

f2 = fueleconmorphing;
f1 = fueleconstatic;
fuelsavedpergallon = (f2-mpg);
disp(fuelsavedpergallon + " mpg saved");
if (f2-f1)>0
disp("design is efficient") %efficient
else
disp("inefficient") %inefficient
end

