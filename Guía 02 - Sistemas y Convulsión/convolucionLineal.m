function y = convolucionLineal(x,h)
  n = length(x);
  m = length(h);
  y=zeros(1,n+m-1);
  for i=1:n
    for k=1:m
      y(i+k-1) += h(k)*x(i);
    endfor
  endfor
endfunction