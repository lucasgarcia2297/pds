function [x] = rectificMedOnda(x)
  for i=1:length(x)
    if x(i) < 0
      x(i) = 0;
    endif
  endfor
  
endfunction

## Copyright (C) 2024 lucas
## Author: lucas <lucas@LAPTOP-SV9P07BN>
## Created: 2024-03-21
