function R=rf(A)
[m,n]=size(A);
for k=1:n
    u=house(A(k:m,k));
    A(k:m,k:n)=ha(u,A(k:m,k:n));
end
R=A;