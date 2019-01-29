function x=linsys1(A,b)
[L,U]=luf1(A);
y=lowsys1(L,b);
x=uppsys1(U,y);