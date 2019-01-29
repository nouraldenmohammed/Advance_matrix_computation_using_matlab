function x=linsys2(A,b)
[p,L,U]=pluf(A);
y=lowsys1(L,b(p));
x=uppsys1(U,y);