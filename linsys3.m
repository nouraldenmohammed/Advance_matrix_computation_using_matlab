function x=linsys3(A,b)
[p,L,U]=pluf1(A);
y=lowsys1(L,b(p));
x=uppsys1(U,y);