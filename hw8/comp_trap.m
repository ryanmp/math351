% Simple function implementing the composite trapezoid rule with node points
% given by x and the corresponding function values given by y.
% NOTE: we assume that the points x are equally spaced!! 

function I = comp_trap(x,y)

    h = x(2)-x(1);      %assume equal spacing
    I = y(1) + 2*sum(y(2:end-1)) + y(end);
    I = h/2*I;
    
end