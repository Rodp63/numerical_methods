function r = newton(a, b, e, x = (a + b) / 2)
  
  h = (b - a) / 50;
  xx = a : h : b;
  yy = fun(xx);
  plot(xx,yy), grid;
  hold on;
  
  n = 1;
  e1 = e + 1;
  while e1 > e %por error
    x = x - (fun(x) / deriv(x));
    fprintf('n = %d, x = %.6f, f(x) = %.8f\n',n,x,fun(x));
    e1 = abs(fun(x));
    n = n + 1;
  end
  r = x;
  fprintf('ans = %.8f\n',r);
  
  plot(x, fun(x), 'or');
  hold off;
  
endfunction
