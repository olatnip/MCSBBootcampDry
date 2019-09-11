function sse = sumsquarederrors2(fun,params,sizes)

    [f,x]=ecdf([sizes zeros(1, params(2))]);
    xp=x>20;
    fp=f(xp);
    y=fun(x(xp),params(1));
    
    
    
    sse=sum((y-fp).^2);

end