%%

%Generate 1 million random points

rpoints=-2+(2+2)*rand(1,1e6);
ipoints=-2i+(2i+2i)*rand(1,1e6);
p=rpoints+ipoints;


%Run follow_z


for i=1:1e6
    
    [nmax(i),~]=follow_z(p(i),c);
    
end    