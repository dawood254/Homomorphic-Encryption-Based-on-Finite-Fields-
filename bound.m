function boun_d=bound(M,z)
x=length(M);
g=M;
for i=1:x
if nrm(g{i})<z
    B{i}=g{i};
else
    B{i}=[0 0;0 0];
    end
end
i=1;
j=1;
C=B;
while i<x+1
    if nrm(C{i})>0
        D{j}=C{i};
        j=j+1;
    end
    i=i+1;
end
boun_d=D;