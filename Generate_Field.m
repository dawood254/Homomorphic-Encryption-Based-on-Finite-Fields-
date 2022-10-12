function Field=Generate_Field(M,degree,prime)
f=M;
f1=M;
I=eye(degree);
g{1}=f;
index=2;
while 1
    n=mod(f1*f,prime);
    g{index}=n;
    index=index+1;
     f=n;
    if n==I
        break
    end
end
Field=g;