function y = convolucionCircular(x,h)
  %x y h tienen que ser periodicas de periodo N
  N = length(x); % tamaño de x o de h 
  y = zeros(1,N); 
  for k = 1:N
    for l = 1:N
      pos = mod(N + k - l,N) + 1;
      y(k) +=h(l)*x(pos);
    endfor
  endfor
endfunction


