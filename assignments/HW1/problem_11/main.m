% HW1 문제 11: 행렬식 직접 계산과 det 비교
% 출처: EngComp_HW1.pdf, PDF 2쪽. 풀이 및 검증용 재작성 코드.
results=struct();
A=[1 2;2 8]; B=[3 4;5 7]; C=[1 1 1;1 2 2;1 2 3]; D=[1 1 2;0 0 0;1 0 2];
det2=@(X) X(1,1)*X(2,2)-X(1,2)*X(2,1);
det3=@(X) X(1,1)*(X(2,2)*X(3,3)-X(2,3)*X(3,2)) ...
 -X(1,2)*(X(2,1)*X(3,3)-X(2,3)*X(3,1)) ...
 +X(1,3)*(X(2,1)*X(3,2)-X(2,2)*X(3,1));
results.direct=[det2(A) det2(B) det3(C) det3(D)];
results.builtin=[det(A) det(B) det(C) det(D)];
assert(norm(results.direct-[4 1 1 0])<1e-12);
assert(norm(results.direct-results.builtin)<1e-12);
