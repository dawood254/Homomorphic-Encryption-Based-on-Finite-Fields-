clc
clear
%%%%%%%%%%%%%%%Input Companion Matrix%%%%%%%%%
prime=53;
degree=2;
poly1=[5 1 1];
poly2=[2 9 1];
M=[0 prime-poly1(1);1 prime-poly1(2)];
N=[0 prime-poly2(1);1 prime-poly2(2)];
Field_1=Generate_Field(M,degree,prime);
Field_2=Generate_Field(N,degree,prime);
B=bound(Field_1,20);
root=find_root(Field_2,poly1,prime);
iso_Field=Generate_Field(root,degree,prime);
i=1;
j=1;
while i<prime^degree
    A=Field_1{i};
    B=nrm(A);
    if B<40
        Fx{j}=A;
        i=i+1;
        j=j+1;
    else
        i=i+1;
    end
end
[a,b]=size(Fx);
i=1;
while i<b+1
    Nx(i)=nrm(Fx{i});
    i=i+1;
end
i=1;
while i<b+1
    Fy{i}=iso_map(Fx{i},Field_1,Field_2,poly1,degree,prime);
    i=i+1;
end
i=1;
while i<b+1
    Ny(i)=nrm(Fy{i});
    i=i+1;
end