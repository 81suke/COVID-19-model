function dydt = SEIRode(t,y,beta,epsilon,gamma)
dydt = zeros(4,1);
dydt(1) = -beta*y(1)*y(3);
dydt(2) = beta*y(1)*y(3)-epsilon*y(2);
dydt(3) = epsilon*y(2)-gamma*y(3);
dydt(4) = gamma*y(3);
dydt(1)+dydt(2)+dydt(3)+dydt(4) == 0;
end