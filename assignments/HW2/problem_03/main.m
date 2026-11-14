% HW2 03 벡터 삼중곱 항등식
% 원문 조건과 정정 사항은 README.md 참고.
results=struct();
u=[-2 6 5]; v=[5 -1 3]; w=[4 7 -2];
results.lhs=cross(u,cross(v,w)); results.rhs=v*dot(u,w)-w*dot(u,v);
results.residual=norm(results.lhs-results.rhs);
assert(isequal(results.lhs,[124 -17 70]) && results.residual<1e-12);
