function power=find_power(Field,M)
x=length(Field);
g=Field;
for i=1:x
    if g{i}==M
          power=i;
        break 
      
    end
end