% set parameters 
epsilon = 0.08;
a = 1;
b = 0.2;

% set initial population sizes
V0 = 0;
W0 = -0.5;

% I stuff

I0 = 1.0;
tStart = 40;
tStop = 47;
I =@(t) I0*(t>tStart).*(t<tStop);


% write system of odes
dVWdt = @(VW) [VW(1)-(VW(1).^3)/3-VW(2);...
               epsilon*(VW(1)+a-b*VW(2))];

% solve
[t,VW] = ode45(@(t,x) dVWdt(x),[0 100],[V0;W0]);

% plot
figure; clf; hold on;
plot(t,VW(:,1),'b');
plot(t,VW(:,2),'r');

%%

% set parameters 
epsilon = 0.08;
a = 1;
b = 0.2;

% set initial population sizes
V0 = -1.5;
W0 = -0.5;

% I stuff

I0 = 1.0;
tStart = 40;
tStop = 47;
I =@(t) I0*(t>tStart).*(t<tStop);


% write system of odese
dVWdt = @(t,VW) [VW(1)-(VW(1).^3)/3-VW(2)+I(t);...
               epsilon*(VW(1)+a-b*VW(2))];

% solve
[t,VW] = ode45(@(t,x) dVWdt(t,x),[0 100],[V0;W0]);

% plot
figure; clf; hold on;
plot(t,VW(:,1),'b');
plot(t,VW(:,2),'r');

