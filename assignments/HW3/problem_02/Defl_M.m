function y=Defl_M(M,E,I,x)
% 원문 모멘트 부호(반시계방향 +)를 적용한 처짐.
assert(E>0 && I>0);
y=M*x.^2/(2*E*I);
end
