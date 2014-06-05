% adapted from comp_trap.m
function I = comp_simpson(x,y)
    h = x(2)-x(1);      %assume equal spacing
    I = y(1) + y(end); % beginning and end
    I = I + 4*sum(y(2:2:end-1)); %odd
    I = I + 2*sum(y(3:2:end-1)); %even
    I = (h/3)*I;  
end