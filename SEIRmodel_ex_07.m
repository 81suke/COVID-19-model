clear
hold off

day = 100;
U = 120000000;
PCR = 101818;
patients = 9449;
positive = 10974;
D0 = 244;
R0 = 1339;
I0 = patients - D0 - R0;
E0 = (positive - I0 - D0 - R0)* 25 /3 + (PCR - positive)*0.4 * 25 / 3;
S0 = U - E0- I0 - R0 - D0;
Reproduct =2.5;
sigma = 0.7;
gamma = 1/10;
epsilon = 1/7;
delta = 0.0066;
beta = Reproduct*(1-sigma)*gamma/U;
tspan = [0 day];
y0 = [S0 E0 I0 R0 D0];
[t,y] = ode113(@(t,y) SEIRode2(t,y,beta,epsilon,gamma,delta), tspan, y0);

plot(t,y)
hold on
title('COVID-19 simulation by SEIR model')
xlabel('day')
ylabel('amount')
ylim([0 200000])
legend('Susceptible','Exposed','Infectious','Recovered','Dead','Location','best')