clc
clear
%%%%%%%%%%%%%%%Input Companion Matrix%%%%%%%%%
prime=251;
degree=3;
poly1=[19 1 1];
poly2=[19 3 1];
M=[0 prime-poly1(1);1 prime-poly1(2)];
N=[0 prime-poly2(1);1 prime-poly2(2)];
Field_1=Generate_Field(M,degree,prime);
Field_2=Generate_Field(N,degree,prime);
root=find_root(Field_2,poly1,prime);
%%%%%%%%%%isomorphism%%%%%%%%%%%%%%%%%%%%%%
iso_Field=Generate_Field(root,degree,prime);

