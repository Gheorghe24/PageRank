# Tema 1 MN

I. Iterative function
-----------------------
In the first algorithm I use the formulas from the given source (wikipedia).
Read first file number (number of nodes)
First I open the file with the name given as a parameter,
I initialize vectors and matrices with the given size.
I go through each line so I read the first number (node) and the number of neighbors,
I go through with a forum to the number of neighbors
I check if they are not on the main diagonal in the matrix, otherwise in the positions (node, neighbor) 
I put the value 1 (to keep the links between the pages).
In the column L vector, save the neighbors of each node
K is a diagonal matrix with values on the diagonal values of L. For that I will need the inverse of K later,
set the inverse of each element from the beginning (inverse values = 1 / values in the diagonal matrix)
Another matrix in the formula is transposed M = (K ^ -1 * A)
I calculate the first 2 pagerank indices and then I calculate the next one each time, I exchange them until the difference in the mode is less than the error given as a parameter, at the end I return the required index

2.PR_Inv
---------------------
I wrote enough details/comments in the given function. Thus, I first decompose the matrix A with Gramschimdt's QR decomposition algorithm. After finding the orthogonal matrix Q and the upper triangular matrix R, I use a function that calculates the elements in my inverted matrix by backwardsubstitution.

From the properties of the matrices above I come to the formula R * x (i) = Q transposed * e_i (e_i is the column i in the identity matrix)

x (i) is the column in the inverted matrix.

In my case B will be the inverse of the matrix A.

So Q * R * [x1, x2, ..., xn] = In ([e1, e2, e3 ...]) multiply to the left with the transposed matrix

R * x_i = Q ^ t * e_i

and so do backwards substitution in the upper triangular matrix.

I took the algorithm from the lab and implemented it in a function according to the formula.

Depending on who I wrote, everyone is:

% solving a triangular upper system
% U-triangular upper matrix
% b is the right side of the equation
% n - matrix size
% x - solution vector
% U x = b
3.Algebraic function
------------------------
This is very similar to the first algorithm, the only difference being that I find the index here page rank from a formula and I need the inverse implemented at the previous function
I just apply the formula found in the sources and that's it.

4.Apartenenta
-----------------------
I receive as parameters x (Pr of a node) and 2 values.
Now I need to find out the coefficients of the function so that it is continuous. I found out and found out
for a function to be continuous the left value limit must be equal to the right value limit
I replace in a system and I get the 2 coefficients (a and b).
I return the function.

5.PageRank(ultima functie)
--------------------------
I read again from the file the same as in the other 2 functions from the beginning (just to save my 2 values at the end)
I find pagerank by both methods.
I close the file, concatenate it to the name ".out" and open it.
I start by writing the number of nodes (pages) then the pagerank found through the 2 algorithms.

Save in a 2-column array (index of each node and pagerank of each with the 2nd algorithm)
Sort using the sort sort function
I print at the end of the file the nodes in descending order, as well as their pagerank.

