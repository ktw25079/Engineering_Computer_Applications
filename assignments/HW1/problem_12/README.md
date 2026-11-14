# HW1 · 문제 12: 2×2 역행렬 비교

## 문제

문제 11의 A와 B의 역행렬을 (a) 배열 인덱싱을 이용한 공식, (b) inv로 계산하고 비교한다.

[원본 문제 PDF 2쪽](../../EngComp_HW1.pdf#page=2)의 조건을 정리했습니다.

## 풀이

$\begin{bmatrix}a&b\\c&d\end{bmatrix}^{-1}=\frac{1}{ad-bc}\begin{bmatrix}d&-b\\-c&a\end{bmatrix}$이며 행렬식이 0이 아닐 때만 적용된다. 직접식과 내장 함수의 차이 및 원행렬과 역행렬의 곱이 단위행렬인지 확인한다. 연립방정식만 풀 때는 역행렬 생성 대신 `A\b`를 권장한다.

## 실행과 결과

이 폴더를 MATLAB 현재 폴더로 선택한 뒤 `main`을 실행합니다. 계산값은 `results` 구조체에 저장되며 `assert`로 확인합니다. HW1 전체 실행은 상위 폴더에서 `run_all`을 실행합니다.

- [MATLAB 코드](main.m)
- [실제 실행 결과](results.txt)
- [HW1 문제 목록](../README.md)
