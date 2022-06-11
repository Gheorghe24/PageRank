function [R1 R2] = PageRank(nume, d, eps)
	% Calculeaza indicii PageRank pentru cele 3 cerinte
	% Scrie fisierul de iesire nume.out
  R1 = Iterative(nume, d, eps);
  R2 = Algebraic(nume, d, eps);
  fid = 0;
  fid = fopen(nume, "r");
  if fid == -1
    disp('Eroare');
  endif
  n = fscanf(fid, '%d', 1);
  for i = 1:n 
   pos1 = fscanf(fid, '%d', 1);
   m = fscanf(fid, '%d', 1);     
    for j = 1:m
     v = fscanf(fid, '%d', 1);
    endfor
  endfor
 val1 = fscanf(fid, '%f', 1);
 val2 = fscanf(fid, '%f', 1);
 %inchid fisierul din care citesc 
 fclose(fid);
 %concatenez la fisierul precedent terminatia ".out"
 nume = [nume ".out"];
 fid1 = 0;
 %il deschid si verific daca e deschis corect
 fid1 = fopen(nume, "w");
  if fid1 == -1
    disp('Eroare');
  endif
  %afisez n
  fprintf(fid1, "%d\n\n", n);
  %afisez primul Pr
  for i = 1:n
    fprintf(fid1, "%f\n", R1(i));
  endfor
  
  fprintf(fid1, "\n");
  
  %afisez al doilea Pr
  for i = 1:n
    fprintf(fid1, "%f\n", R2(i));
  endfor
  
  fprintf(fid1, "\n");
  PR1(:,1) = 1:n;
  PR1(:,2) = R2;
  % sortez cele 2 coloane formate mai sus
  PR1(:,2) = sort(R2,'descend');
  for i = 1:n
    fprintf(fid1, "%d %d %f\n", i, PR1(i,1),Apartenenta(PR1(i,2),val1, val2));
  endfor
  fclose(fid1);
endfunction
  
  
