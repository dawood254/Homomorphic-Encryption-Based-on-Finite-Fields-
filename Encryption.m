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
%%%%%%%%%%%%%%%%%%%%Encryption%%%%%%%%%%%
M=[14 4;13 1];
P=[15 0;0 15];
r=[13 4;13 0];
piM=iso_map(M,Field_1,Field_2,poly1,degree,prime)
piP=iso_map(P,Field_1,Field_2,poly1,degree,prime)
pir=iso_map(r,Field_1,Field_2,poly1,degree,prime)
y11=mult(pir,piP,prime);
ciphertext=add(y11,piM,prime)
%%%%%%%%%%%%%%%%%%%%Decryption%%%%%%%%%%%%%%%
X=in_iso_map(ciphertext,Field_1,Field_2,poly2,degree,prime);
Plaintext=mod(X,15)
