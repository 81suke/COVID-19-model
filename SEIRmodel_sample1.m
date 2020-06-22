clear
hold off

day = 250;
S0 = 999;
E0 = 1;
I0 = 0;
R0 = 0;
R =2.5;
gamma = 1/14;
epsilon = 1/7;
beta = R*gamma/(S0+E0+I0+R0);
tspan = [0 day];
y0 = [S0 E0 I0 R0];
[t,y] = ode113(@(t,y) SEIRode(t,y,beta,epsilon,gamma), tspan, y0);

plot(t,y)
hold on
xlabel('day')
ylabel('amount')
legend('S(t)','E(t)','I(t)','R(t)','Location','best')