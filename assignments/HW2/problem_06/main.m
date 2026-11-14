% HW2 06 키르히호프 회로 전류
% 원문 조건과 정정 사항은 README.md 참고.
results=struct();
R=[18 10 16 6 15 8 12 14]; V=[20 12 40];
A=[R(1)+R(2)+R(3),-R(2),-R(3),0; ...
 -R(2),R(2)+R(4)+R(5)+R(7),-R(4),-R(7); ...
 -R(3),-R(4),R(3)+R(4)+R(6),-R(6); ...
 0,-R(7),-R(6),R(6)+R(7)+R(8)];
b=[V(1);0;-V(2);V(3)]; i=A\b;
results.A_ohm=A; results.b_V=b; results.currents_A=i;
results.KVL_residual_V=A*i-b;
assert(norm(results.KVL_residual_V,inf)<1e-12);
assert(norm(A-A.','fro')==0);
