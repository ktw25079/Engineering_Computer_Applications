% HW1 문제 12: 2×2 역행렬 비교
% 출처: EngComp_HW1.pdf, PDF 2쪽. 풀이 및 검증용 재작성 코드.
results=struct();
A=[1 2;2 8]; B=[3 4;5 7];
inv2=@(X) [X(2,2) -X(1,2);-X(2,1) X(1,1)]/(X(1,1)*X(2,2)-X(1,2)*X(2,1));
results.A_direct=inv2(A); results.A_inv=inv(A);
results.B_direct=inv2(B); results.B_inv=inv(B);
assert(norm(results.A_direct-results.A_inv,'fro')<1e-12);
assert(norm(results.B_direct-results.B_inv,'fro')<1e-12);
assert(norm(A*results.A_inv-eye(2),'fro')<1e-12);
assert(norm(B*results.B_inv-eye(2),'fro')<1e-12);
