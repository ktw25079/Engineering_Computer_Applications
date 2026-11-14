% HW1 문제 9: 행렬의 부분 선택
% 출처: EngComp_HW1.pdf, PDF 2쪽. 풀이 및 검증용 재작성 코드.
results=struct();
B=[18 17 16 15 14 13;12 11 10 9 8 7;6 5 4 3 2 1];
results.va=[B(:,2);B(:,5)];
results.vb=[B(3,3:6).';B(:,2)];
results.G=[B(1,[1 2 5 6]);B(3,2:5)];
results.K=B(:,[1 4 5]);
assert(isequal(results.va,[17;11;5;14;8;2]));
assert(isequal(results.vb,[4;3;2;1;17;11;5]));
assert(isequal(results.G,[18 17 14 13;5 4 3 2]));
assert(isequal(results.K,[18 15 14;12 9 8;6 3 2]));
