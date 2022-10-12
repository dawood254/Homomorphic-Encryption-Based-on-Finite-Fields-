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
I2=[2 0;0 2];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
L1=B{6}; L2=B{14}; L3=B{15}; L4=B{23};
Hx1=L1*I2; Hx2=L2*I2; Hx3=L3*I2; Hx4=L4*I2;
Hy1=iso_map(Hx1,Field_1,Field_2,poly1,degree,prime);
Hy2=iso_map(Hx2,Field_1,Field_2,poly1,degree,prime);                      %%
Hy3=iso_map(Hx3,Field_1,Field_2,poly1,degree,prime);                      %%
Hy4=iso_map(Hx4,Field_1,Field_2,poly1,degree,prime);                      %%
%%%%%%%%%%%%%%%%%%%%%%%%%%Encryption%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
C1y=mod(Hy2+Hy4+eye(2),251)
%%%%%%%%%%%%%%%%%%%%%Decryption%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Cx1=in_iso_map(C1y,Field_1,Field_2,poly2,degree,prime)
P1=mod(Cx1,2)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% L11=B{25}; L22=B{9}; L33=B{2}; L44=B{24};
% Hx11=L11*I2; Hx22=L22*I2; Hx33=L33*I2; Hx44=L44*I2;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hy11=iso_map(Hx11,Field_1,Field_2,poly1,degree,prime);
% Hy22=iso_map(Hx22,Field_1,Field_2,poly1,degree,prime);                      %%
% Hy33=iso_map(Hx33,Field_1,Field_2,poly1,degree,prime);                      %%
% Hy44=iso_map(Hx44,Field_1,Field_2,poly1,degree,prime);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% C2y=mod(Hy33+Hy44,251);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%Decryption%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cx1=in_iso_map(C2y,Field_1,Field_2,poly2,degree,prime);
% P2=mod(Cx1,2)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Homomrphic property%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cyy=add(C1y,C2y,prime);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cxx=in_iso_map(Cyy,Field_1,Field_2,poly2,degree,prime);
% P12=mod(Cxx,2)
