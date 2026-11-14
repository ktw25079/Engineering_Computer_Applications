% HW2 05 선형 연립방정식
% 원문 조건과 정정 사항은 README.md 참고.
results=struct();
A=[3 -2 5;-4.5 2 3;5 1 -2.5]; b=[7.5;5.5;4.5];
results.xyz=A\b; results.residual=A*results.xyz-b;
assert(norm(results.residual,inf)<1e-12);
