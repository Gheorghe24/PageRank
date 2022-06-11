  function R = Iterative(nume, d, eps)
	% Functia care calculeaza matricea R folosind algoritmul iterativ.
	% Intrari:
	%	-> nume: numele fisierului din care se citeste;
	%	-> d: coeficentul d, adica probabilitatea ca un anumit navigator sa continue navigarea (0.85 in cele mai multe cazuri)
	%	-> eps: eruarea care apare in algoritm.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina.
  fid = 0;
  fid = fopen(nume, "r");
  if fid == -1
    disp('Eroare');
  endif
  n = fscanf(fid, '%d', 1);
  A = zeros(n, n);
  L = zeros(n, 1);
  R_1 = zeros(n, 1);
  R_0 = zeros(n, 1) + 1/n;
  M = zeros(n ,n);
  K = zeros(n, n);
  for i = 1:n 
   pos1 = fscanf(fid, '%d', 1);
   m = fscanf(fid, '%d', 1);     
   L(i) = m;
    for j = 1:m
     v = fscanf(fid, '%d', 1);
       if(pos1 != v)
       A(pos1, v) = 1; 
     else 
       L(i)--;
       endif
    endfor
  endfor
   val1 = fscanf(fid, '%f', 1);
   val2 = fscanf(fid, '%f', 1);

  for i = 1:n
    K(i,i) = 1/L(i);
  endfor
  %inversa unei matrici diagonale e matricea transpusa
  M = transpose(K*A);
  R_1 = d*M*R_0 + ((1-d)/n)*ones(n,1);
  do
    R_0 = R_1;
    R_1 = d*M*R_0 + ((1-d)/n)*ones(n,1);
  until norm(R_1 - R_0) < eps
  R = R_0;
 endfunction
