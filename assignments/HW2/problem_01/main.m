% HW2 01 벡터의 크기
% 원문 조건과 정정 사항은 README.md 참고.
results=struct();
u=[23.5 -17 6];
results.elementwise=sqrt(sum(u.^2)); results.norm=norm(u);
assert(abs(results.norm-sqrt(877.25))<1e-12);
assert(abs(results.norm-results.elementwise)<1e-12);
