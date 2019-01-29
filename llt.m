function [L,d]=llt(A)
n=length(A);
if A(1,1)<=0
    d=0;
else
    d=1;
    L(1,1)=sqrt(A(1,1));
end
k=1;
while and(d==1,k<n)
    z=lowsys1(L(1:k,1:k),A(1:k,k+1));
    L(k+1,1:k)=z';
    w=A(k+1,k+1)-L(k+1,1:k)*z;
    if w<=0
        d=0;
    else
        L(k+1,k+1)=sqrt(w);
    end
    k=k+1;
end
end