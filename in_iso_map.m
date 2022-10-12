function output=in_iso_map(M,F1,F2,poly,degree,prime)
root=find_root(F1,poly,prime);
if M==[0 0;0 0]
    output=[0 0;0 0]
else
I1=find_power(F2,M);
iso_Field=Generate_Field(root,degree,prime);
N=iso_Field{I1};
I2=find_power(F1,N);
output=N;
end