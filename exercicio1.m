function t = exercicio1(v, xl, xu)

  es = 1;  
  imax = 20;  
  
  t = 0; 
  ea = 100; 
  iter = 0; 

  while (ea > es) && (iter < imax) 
    iter = iter + 1; 
    t_old = t; 
    t = (xu*(v(xu)*(xl-xu))/(v(xl)-v(xu)));
    

    if v(xl)*v(t) < 0 
      xu = t;
    elseif v(xu)*v(t) < 0
      xl = t;
    else
      break; 
    end
    if t ~= 0 
      ea = abs((t - t_old)/t) * 100;   
    end
  end

endfunction
