format long;

target = sqrt(12); 

a = 12;
x0 = 1;

x = (x0*(x0^2 + 3*a))/(3*x0^2 + a);

xarray = [x];
its = 0

for n = 1:50 
    xarray = [xarray x];

    its = its+1;
    if its >= 2
        cratio = (xarray(its+1)-xarray(its))/(xarray(its)-xarray(its-1))^3;   %compute the cubic ratio
    end
    
    if (its >= 2)
        fprintf(' %d\t%.16f\t%d\n',n,x,cratio); 
    else
        fprintf(' %d\t%.16f\t\n',n,x); 
    end
    
    x = (x*(x^2 + 3*a))/(3*x^2 + a);
 
end

target