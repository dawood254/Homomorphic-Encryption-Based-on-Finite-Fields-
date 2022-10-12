clc
clear
%%%%%%%%%%%%%%%Input Companion Matrix%%%%%%%%%
prime=31;
degree=2;
poly1=[12 1 1];
poly2=[13 1 1];
M=[0 prime-poly1(1);1 prime-poly1(2)];
N=[0 prime-poly2(1);1 prime-poly2(2)];
Field_1=Generate_Field(M,degree,prime);
Field_2=Generate_Field(N,degree,prime);
B=bound(Field_1,5);
x=length(B);
i=1;
j=1;

        
        