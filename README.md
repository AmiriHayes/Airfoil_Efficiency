# Airfoil_Efficiency

1. liftdragcoefficients.m
Calculates and compares values of lift and drag for an input airfoil using relevant variables. This program assumes that the airfoils 
have also been simulated in a physics simulation software where values of lift and drag have been obtained. The program then returns
scaled values for the theoretical coefficients of lift and drag (those obtained using relevant variables) and the experimental coefficients
of lift and drag (those obtained by manipulating simulation obtained values). 

2. fuelefficiency.m
Employs information about the aircraft and airfoil is used for to determine fuel efficiency. This is accomplished through the use of 
kinematic equations using forces such as thrust, drag, lift and weight. This information is then combined with the fuel usage of the aircraft  
and velocity of the aircraft to compare the distance travelled per gallon for two airfoils with different coeeficients of lift and drag.
