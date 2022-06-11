function R = Algebraic(nume, d)
	% Functia care calculeaza vectorul PageRank folosind varianta algebrica de calcul.
	% Intrari: 
	%	-> nume: numele fisierului in care se scrie;
	%	-> d: probabilitatea ca un anumit utilizator sa continue navigarea la o pagina urmatoare.
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
  R = zeros(n, 1);
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
 val1 = fscanf(fid, '%u', 1);
 val2 = fscanf(fid, '%u', 1);
  for i = 1:n
    K(i,i) = 1/L(i);
  endfor
  %exact acelasi procedeu ca in cazul Iterative insa o noua formula
  M = transpose(K*A);
  %am calculat inversa cu ajutorul descompunerii QR asa cum a fost precizat
  % in cerinta
  R = (PR_Inv(eye(n) - d*M) * ((1-d)/n)*ones(n,1));
 endfunction