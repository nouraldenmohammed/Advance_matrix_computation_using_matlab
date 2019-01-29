function X=inver1(A)
n=length(A);
I=eye(n);
for j=1:n
    X(:,j)=linsys1(A,I(:,j));
end