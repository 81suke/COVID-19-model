clear
hold off

day = 200;
S0 = 999;
I0 = 1;
R0 = 0;
R =2.5;
gamma = 1/14;
beta = R*gamma/S0;
tspan = [0 day];
y0 = [S0 I0 R0];
[t,y] = ode113(@(t,y) SIRode(t,y,beta,gamma), tspan, y0);

plot(t,y)
hold on
xlabel('day')
ylabel('amount')
legend('S(t)','I(t)','R(t)','Location','best')