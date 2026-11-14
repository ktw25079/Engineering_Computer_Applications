function y=Defl_w(w,E,I,L,x)
% 등분포하중 처짐, w 단위 N/m.
assert(E>0 && I>0 && L>0);
y=w*x.^2.*(x.^2+6*L^2-4*L*x)/(24*E*I);
end
