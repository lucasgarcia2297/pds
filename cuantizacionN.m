function [x] = cuantizacionN (x,N,A)
  #x: vector con valores de la señal.
  #N: Nro de niveles de cuantización.
  #A: Amplitud de la señal original.
  
  H = (2*A)/(N-1); %H: magnitud del cuanto o paso.
  minimo = min(x);
  if(minimo < 0)
    x = x - minimo;
  endif
  for i=1:length(x)
    if x(i)<0
      x(i) = 0;  
    elseif x(i)>=(N-1)*H
      x(i)=(N-1)*H;    
    else
      x(i) = H*round(x(i)/H);
    endif
  endfor
  if minimo < 0
   x = x + minimo;
  endif
endfunction

## Copyright (C) 2024 lucas
## Author: lucas <>
## Created: 2024-03-24

