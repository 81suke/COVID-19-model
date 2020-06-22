function dydt = SEIRode1(t,y,beta,epsilon,gamma,delta)
dydt = zeros(5,1);
dydt(1) = -beta*y(1)*y(3);
dydt(2) = beta*y(1)*y(3)-epsilon*y(2);
dydt(3) = epsilon*y(2)-gamma*y(3)-delta*gamma*y(3);
dydt(4) = gamma*y(3);
dydt(5) = delta*gamma*y(3);
dydt(1)+dydt(2)+dydt(3)+dydt(4)+dydt(5) == 0;
end