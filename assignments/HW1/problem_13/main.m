% HW1 문제 13: 3×3 역행렬의 존재 여부
% 출처: EngComp_HW1.pdf, PDF 2쪽. 풀이 및 검증용 재작성 코드.
results=struct();
C=[1 1 1;1 2 2;1 2 3]; D=[1 1 2;0 0 0;1 0 2];
results.C_inverse=inv(C);
results.D_determinant=det(D);
results.D_rank=rank(D);
results.D_inverse_exists=false;
assert(norm(C*results.C_inverse-eye(3),'fro')<1e-12);
assert(isequal(round(results.C_inverse),[2 -1 0;-1 2 -1;0 -1 1]));
assert(results.D_rank==2 && results.D_determinant==0);
