% HW1 문제 3: 배열로 도형 크기 계산
% 출처: EngComp_HW1.pdf, PDF 1쪽. 풀이 및 검증용 재작성 코드.
results=struct();
r=3; h=[1 5 12];
results.cylinder_volume=pi*r^2*h;
b=[2 4 6]; h_triangle=12;
results.triangle_area=0.5*b*h_triangle;
assert(norm(results.cylinder_volume/pi-[9 45 108])<1e-12);
assert(isequal(results.triangle_area,[12 24 36]));
