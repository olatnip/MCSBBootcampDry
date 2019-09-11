%%
close all
clearvars

nmax=100;
x=ones(1,nmax);
x(1)=0.2;

r=0.1;
K=0.6;

for n=1:nmax-1
    x(n+1)=x(n)+r*(1-(x(n)/K))*x(n);
end

figure
plot(x)
xlabel('Years')
ylabel('Plants (in thousands)')


%%

clearvars

nmax=100;
x=ones(1,nmax);
x(1)=0.2;

r=2.1;
K=0.6;

for n=1:nmax-1
    x(n+1)=x(n)+r*(1-(x(n)/K))*x(n);
end

figure
plot(x,'Color','#d914b2')
xlabel('Years')
ylabel('Plants (in thousands)')


%%


clearvars

nmax=100;
x=ones(1,nmax);
x(1)=0.2;

r=2.5;
K=0.6;

for n=1:nmax-1
    x(n+1)=x(n)+r*(1-(x(n)/K))*x(n);
end

figure
plot(x,'Color','#27d914')
xlabel('Years')
ylabel('Plants (in thousands)')


%%

close all
clearvars

nmax=100;

K=0.6;

loop=1;
loopmax=100;

x=ones(loopmax,nmax);
x(:,1)=0.2;
figure
hold on
for loop=1:loopmax
    
    r=linspace(0,3,loopmax);
    for n=1:nmax-1
        x(loop,n+1)=x(loop,n)+r(loop)*(1-(x(loop,n)/K))*x(loop,n);
    end
    plot(r(loop),x(loop,nmax/2:nmax),'.')
    loop=loop+1;
    
end
    

xlabel('R values')
ylabel('Steady States')

    