clc
clear
f=[0 4;1 5];
f1=[0 4;1 5];
I=[1 0;0 1];
g{1}=f;
index=2;
while 1
    n=mod(f1*f,7);
    g{index}=n;
    index=index+1;
     f=n;
    if n==I
        break
    end
end
for i=1:48
if nrm(g{i})<5
    B{i}=g{i};
else
    B{i}=[0 0;0 0];
    end
end