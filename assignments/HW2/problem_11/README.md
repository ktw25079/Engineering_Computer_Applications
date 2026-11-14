# HW2 · 문제 11: 매개변수 곡선 두 개

## 문제

0≤t≤2π에서 x=cos³t, y=sin³t와 u=sint, v=cost를 같은 plot에 그리고 양 축 범위를 [−2,2]로 제한한다.

[원본 PDF 2쪽](../../EngComp_HW2.pdf#page=2)

## 풀이

첫 곡선은 아스트로이드, 두 번째는 단위원이다. 두 축의 축척이 동일하도록 axis equal을 적용한 뒤 axis([-2 2 -2 2])로 범위를 설정한다.

## 실행과 결과

이 폴더에서 `main`을 실행합니다. 계산값은 `results`에 저장되고 검증 실패 시 `assert`가 오류를 발생시킵니다. 상위 폴더에서 `run_all`을 실행하면 결과 파일과 그래프가 갱신됩니다.

[MATLAB 코드](main.m) · [실행 결과](results.txt) · [HW2 목록](../README.md)

![실제 MATLAB 실행 그래프](figure_01.png)
