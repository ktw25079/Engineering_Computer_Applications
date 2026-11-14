% HW2 02a 벡터 내적
% 원문 조건과 정정 사항은 README.md 참고.
results=struct();
u=[-3 8 -2]; v=[6.5 -5 -4];
results.elementwise=sum(u.*v); results.matrix=u*v.'; results.dot=dot(u,v);
assert(all(abs([results.elementwise results.matrix results.dot]+51.5)<1e-12));
