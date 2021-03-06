function r = biseccion(a, b, e)
  
  h = (b - a) / 50;
  xx = a : h : b;
  yy = fun(xx);
  plot(xx,yy), grid;
  hold on;
  
  e1 = e + 1;
  while e1 > e
    c = (a + b) / 2;
    fprintf('a = %.3f, b = %.3f, c = %.3f\n',a,b,c);
    fprintf('f(a) = %.3f, f(b) = %.3f, f(c) = %.3f\n',fun(a),fun(b),fun(c));
    if fun(a) * fun(c) < 0
      b = c;
    else
      a = c;
    end
    e1 = abs(fun(c));
  end
  r = c;
  fprintf('%.10f\n',r);
  
  plot(c,fun(c),'or');
  hold off;

endfunction
