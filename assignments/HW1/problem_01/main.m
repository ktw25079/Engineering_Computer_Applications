% HW1 문제 1: 원과 구의 면적·부피
% 출처: EngComp_HW1.pdf, PDF 1쪽. 풀이 및 검증용 재작성 코드.
results=struct();
results.area_cm2 = pi*5^2;
results.surface_cm2 = 4*pi*10^2;
results.volume_cm3 = 4*pi*2^3/3;
assert(abs(results.area_cm2-78.5398163397448)<1e-10);
assert(abs(results.surface_cm2-1256.63706143592)<1e-10);
assert(abs(results.volume_cm3-33.5103216382911)<1e-10);
