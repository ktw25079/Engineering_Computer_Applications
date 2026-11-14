# HW1 · 문제 2: 이상기체와 반데르발스 온도

## 문제

P=220 bar, n=2 mol, V=1 L, a=5.536 L²·bar/mol², b=0.03049 L/mol, R=0.08314 L·bar/(K·mol)일 때 수증기의 온도를 (a) 이상기체식, (b) 반데르발스식으로 계산한다.

[원본 문제 PDF 1쪽](../../EngComp_HW1.pdf#page=1)의 조건을 정리했습니다.

## 풀이

$T_{ideal}=PV/(nR)$, $T_{VW}=(P+n^2a/V^2)(V-nb)/(nR)$로 정리한다. 주어진 상수의 단위가 L·bar이므로 P와 V를 Pa·m³로 바꾸지 않고 일관된 단위를 사용한다. 온도는 K이며 두 상태방정식의 예측을 비교하는 계산이다.

## 실행과 결과

이 폴더를 MATLAB 현재 폴더로 선택한 뒤 `main`을 실행합니다. 계산값은 `results` 구조체에 저장되며 `assert`로 확인합니다. HW1 전체 실행은 상위 폴더에서 `run_all`을 실행합니다.

- [MATLAB 코드](main.m)
- [실제 실행 결과](results.txt)
- [HW1 문제 목록](../README.md)
