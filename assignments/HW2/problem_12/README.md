# HW2 · 문제 12: 극좌표 함수

## 문제

r=2sin(3θ)sinθ, 0≤θ≤2π를 polarplot으로 그린다.

[원본 PDF 2쪽](../../EngComp_HW2.pdf#page=2)

## 풀이

각도 배열은 라디안이며 두 사인 배열의 곱은 `.*`이다. 음수 반지름도 원래 함수값 그대로 polarplot에 전달한다.

## 실행과 결과

이 폴더에서 `main`을 실행합니다. 계산값은 `results`에 저장되고 검증 실패 시 `assert`가 오류를 발생시킵니다. 상위 폴더에서 `run_all`을 실행하면 결과 파일과 그래프가 갱신됩니다.

[MATLAB 코드](main.m) · [실행 결과](results.txt) · [HW2 목록](../README.md)

![실제 MATLAB 실행 그래프](figure_01.png)
