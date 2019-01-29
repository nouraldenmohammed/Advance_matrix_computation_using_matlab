function X=inver2(A)
n=length(A);
[L,U]=luf1(A);
I=eye(n);
for j=1:n
    y=lowsys1(L,I(:,j));
    X(:,j)=uppsys1(U,y);
end