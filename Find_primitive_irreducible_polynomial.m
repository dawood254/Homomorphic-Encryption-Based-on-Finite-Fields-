clc
clear
p = 53; m = 3; 
% Work in GF(81).
% fewterms = gfprimfd(m,'min',p)          % poly=[3     1     1] => 3+x+x^2
threeterms = gfprimfd(m,3,p)

% fourterms = gfprimfd(m,4,p)
% fifthterms = gfprimfd(m,5,p)
% sixthterms = gfprimfd(m,7,p)
