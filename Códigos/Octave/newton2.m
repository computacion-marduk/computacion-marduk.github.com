g = @(x) x^2-1;

dg = @(x) 2*x;

x0 = -3;
tol = 1e-3;

y = newton (g, dg, x0, tol) 

