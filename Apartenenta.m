function y = Apartenenta(x, val1, val2)
	% Functia care primeste ca parametrii x, val1, val2 si care calculeaza valoarea functiei membru in punctul x.
	% Stim ca 0 <= x <= 1
  % o functie este continua daca :
	%limita la stanga si limita la dreapta a functiei in valori trebuie sa fie egale
  if x < val1 
    y = 0;
  elseif x > val2
    y = 1;
  else
    %rezolvam sistemul de ecuatii ax + b = 1 si ax + b = 0
    %si ies coeficientii corespunzatori
    a = 1/(val2 - val1);
    b = -val1/(val2 - val1);
    y = a*x + b;
  endif
  
 endfunction