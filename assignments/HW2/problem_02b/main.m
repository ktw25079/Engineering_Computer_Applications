% HW2 02b 요소별 역수·제곱·나눗셈
% 원문 조건과 정정 사항은 README.md 참고.
results=struct();
v=[2 4 6 8 10];
results.a=1./v; results.b=1./v.^2; results.c=v/2; results.d=v./v;
assert(norm(results.a.*v-ones(1,5))<1e-12);
assert(norm(results.b.*v.^2-ones(1,5))<1e-12);
assert(isequal(results.c,1:5) && isequal(results.d,ones(1,5)));
