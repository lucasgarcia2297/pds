function [t,y] = cuadrada (ti,tf,fm,fs,A,phi)
  T = 1/fm;
  t = ti:T:(tf-T);
  x = 2*pi*fs*t+phi;
  for i=1:length(t)
    if mod(x(i),2*pi)>=pi
      y(i) = -A;  
    else
      y(i) = A;
    endif
  endfor
  

endfunction
