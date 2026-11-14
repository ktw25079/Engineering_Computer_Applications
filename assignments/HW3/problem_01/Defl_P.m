function y=Defl_P(P,E,I,L,x)
% 집중하중 처짐, 입력 단위 N, Pa, m^4, m, m.
assert(E>0 && I>0 && L>0);
y=P*x.^2.*(3*L-x)/(6*E*I);
end
