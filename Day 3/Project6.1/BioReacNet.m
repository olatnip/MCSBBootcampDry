% set up initial conditions
ITot = 1;
PTot = 1;
KTot = 1;
A0 = 0;
AP0 = 0;
IK0 = 0;


% set rates
konA = 10;
koffA = 10;
kcatA = 10;
konI = 10;
koffI = 10;
kcatI = 100;

% create differential equations
dAdt = @(A,AP,I,IK) kcatA*IK-konA*(PTot-AP)*A+koffA*AP ;
dAPdt = @(A,AP,I,IK) konA*(PTot-AP)*A-koffA*AP-kcatI*AP ;
dIdt =  @(A,AP,I,IK) kcatI*AP-konI*(KTot-IK)*I+koffI*IK ;
dIKdt =  @(A,AP,I,IK) konI*(KTot-IK)*I-koffI*IK-kcatA*IK ;

dxdt = @(t,x) [ dAdt(x(1),x(2),x(3),x(4));
        dAPdt(x(1),x(2),x(3),x(4));
        dIdt(x(1),x(2),x(3),x(4));
        dIKdt(x(1),x(2),x(3),x(4))];
    
% solve system
[T,X] = ode45(dxdt,[0,0.5],[A0,ITot,PTot,KTot]);

% plot
figure(1); clf; hold on; box on;
plot(T,X,'LineWidth',2);
plot(T,sum(X,2),'--k','LineWidth',2);