function L = lagrange(x, y, x0)

  n = length(x);
  pl = 0;
  for i=1 : n
      p = 1;
      for j=1:n
          if i ~= j
            p = conv(p, poly(x(j))) / (x(i) - x(j));
            #conv -> multiplica polinomios,
            #poly -> polinomio con raices com argumento
          end
      end
      pl += y(i) * p;
  end
  m = polyval(pl, x0)
  L = pl;
  
  xx = min(x):0.1:max(x);
  yy = polyval(pl, xx);
  hold on
  
  plot(x,y,'or','LineWidth',2,'MarkerFaceColor','r')
  plot(xx,yy), grid
  hold off
  
endfunction
