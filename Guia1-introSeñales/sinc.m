function [t,y] = sinc(ti, tf,fm,fs)
  T = 1/fm;
  t = ti:T:(tf-T);  
  x = 2*pi*fs*t;
  for i=1:length(t)
    if x(i)==0
      y(i) = 1;
    else
      y(i) = sin(x(i))/x(i);
    endif
  endfor
endfunction


