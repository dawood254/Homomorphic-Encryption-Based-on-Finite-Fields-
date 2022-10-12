clc
clear
%%%%%%%%%%%%%%%Input Companion Matrix%%%%%%%%%
prime=251;
degree=2;
poly1=[19 1 1];
poly2=[19 3 1];
M=[0 prime-poly1(1);1 prime-poly1(2)];
N=[0 prime-poly2(1);1 prime-poly2(2)];
Field_1=Generate_Field(M,degree,prime);
Field_2=Generate_Field(N,degree,prime);
B=bound(Field_1,20);
root=find_root(Field_2,poly1,prime);
iso_Field=Generate_Field(root,degree,prime);
% x=mod(5*Field_1{44},prime);
% y=iso_map(B{2},Field_1,Field_2,poly1,degree,prime);
% y1=iso_map(Field_1{44},Field_1,Field_2,poly1,degree,prime);
% y11=mod(5*y1,prime)
fy1=iso_map(Field_1{90},Field_1,Field_2,poly1,degree,prime);
fy2=iso_map(Field_1{15},Field_1,Field_2,poly1,degree,prime);
My=add(fy1,fy2,prime)
fx1=Field_1{90};
fx2=Field_1{15};
fx=add(fx1,fx2,prime);
fy1=iso_map(fx,Field_1,Field_2,poly1,degree,prime)