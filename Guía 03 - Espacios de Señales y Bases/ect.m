function [er] = ect(f1,f2)
  % forma vectorial m�s r�pida:
  er = sum((f1 - f2).^2);
  %{
  % tiempo de ejecuci�n m�s lento con for:
  er = 0;
  for i=1:length(f1)
    er+=(f1(i)-f2(i))^2;
  endfor
  %}
 endfunction