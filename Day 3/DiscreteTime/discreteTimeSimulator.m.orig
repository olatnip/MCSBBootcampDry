% Simulate a discrete-time dynamical system

% x- population of RABBITS in thousands
% n- time in WEEKS

nMax = 20;% max number of days to simulate
x = ones(1,nMax); % population
<<<<<<< HEAD
x(1) = 2.0; % initial condition

for n=2:nMax
    
    x(n) = 1.2*x(n-1)*(1+(100/x(n-1)));
=======
x(1) = 0.2; % initial condition

for n=2:nMax
    
    x(n) = 1.1*x(n-1);
>>>>>>> 5dea9721b88e0d9d439c6dc4bd0810479ba13720
    
end % finished loop through days

figure;
plot(x,'-ok');
ylabel('Rabbits (in thousands)');
xlabel('Weeks');