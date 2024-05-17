function [t,x] = senoidal (ti,tf,fm,fs,A,phi)
  T = 1/fm;
  t = ti:T:(tf-T);
  x = A*sin(2*pi*fs*t+phi);
endfunction
