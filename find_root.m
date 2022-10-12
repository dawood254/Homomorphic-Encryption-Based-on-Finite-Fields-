function root=find_root(Field,V,p)
x=length(Field);
I=[1 0;0 1];
g=Field;

for i=1:x
    if mod(V(3)*g{i}^2+V(2)*g{i}+V(1)*I,p)==0
          root=g{i};
        break 
      
    end
end