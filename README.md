# Tema 1 MN
Grosu Gheorghe 
314 CD

I. Iterative function
-----------------------
In primul algoritm folosesc formulele din sursa data(wikipedia).
Citesc primul nr din fisier(numarul de noduri)
Pentru inceput deschid fisierul cu numele dat ca parametru, 
initializez vectorii si matricele cu marimea data.
Parcurg fiecare linie ptu aceasta citesc primul nr(nodul) si nr de vecini, parcurg cu un for pana la numarul de vecini
Verific daca acestia nu se afla pe diagonala principala din matrice, altfel in pozitiile (nod,vecin) pun valoarea 1(ptu a pastra legaturile dintre pagini).
In vectorul coloana L salvez vecinii fiecarui nod
K este o matrice diagonala cu valorile pe diagonala valorile din L. Ptu ca o sa am nevoie mai tarziu de inversa lui K,
pun de la inceput inversul fiecarui element(valorile inversei = 1/valorile din matricea diagonala)
O alta matrice din formula este M = (K^-1*A) transpus
Calculez primii 2 indici pagerank si apoi il calculez de fiecare data pe urmatorul, ii interschimb pana cand diferenta in modul e mai mica decat eroarea data ca parametru, la final returnez indicele cerut

2.PR_Inv
---------------------
Am scris destule detalii chiar in functia data.
Astfel, Prima data descompun matricea A cu algoritmul descompunerii QR al lui Gramschimdt.
Dupa ce am aflat matricea ortogonala Q si matricea superior triunghiulara R,
folosesc o functie care imi calculeaza elementele din matricea inversata prin
backwardsubstitution. Din proprietatile matricilor de mai sus ajung la formula 
R * x(i) = Q transpus * e_i (e_i este coloana i din matricea identitate)
x(i) este coloana din matricea inversata.
In cazul meu B o sa fie inversa matricei A.
Deci Q*R * [x1,x2, ..., xn] = In ([e1,e2,e3 ...])
inmultesc la stanga cu matricea transpusa
R*x_i = Q^t *e_i si asa fac backwards substitution in matricea superior triunghiulara.
Algoritmul l-am luat din laborator si l-am implementat intr-o functie conform formulei.
In functie am scris cine este fiecare :
% rezolvarea unui sistem superior triunghiular
% U-matricea superior triunghiulara
% b este partea dreapta a ecuatiei
% n - dimensiunea matricei 
% x - vectorul solutie 
% U x = b

3.Algebraic function
------------------------
Aceasta seamana foarte mult cu primul algoritm, singura diferenta fiind faptul ca aici aflu indicele 
page rank dintr-o formula si am nevoie de inversa implementata la functia anterioara
Doar aplic formula gasita in surse si atata tot.

4.Apartenenta
-----------------------
Primesc ca parametri x(Pr-ul unui nod) si 2 valori.
Acum trebuie sa aflu coeficientii functiei astfel incat aceasta sa fie continua.M-am informat si am aflat
ca pentru o functie sa fie continua trebuie ca limita la valoarea din stanga sa fie egala cu limita la valoarea din dreapta
Inlocuiesc intr-un sistem si imi ies cei 2 coeficienti(a si b).
Returnez functia.

5.PageRank(ultima functie)
--------------------------
Citesc iarasi din fisier la fel ca in celelalte 2 functii de la inceput(doar ptu a-mi salva cele 2 valori la final)
Aflu indicii pagerank prin ambele metode.
Inchid fisierul, ii concatenez la nume ".out" si il deschid.Incep prin a scrie numarul de noduri(pagini)
Apoi pagerankul aflat prin intermediul celor 2 algoritmi.

Salvez intr-o matrice cu 2 coloane(indicele fiecarui nod si pagerankul fiecaruia cu cel de-al 2-lea algoritm)
Sortez cu ajutorul functiei sort descrescator
Printez la finalul fisierului cele n noduri in ordine descrescatoare,la fel si pagerankul lor.

A fost o tema frumoasa:)
Sper ca am explicat destul de ok tot ce am facut.
