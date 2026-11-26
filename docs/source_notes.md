# 원문 해석과 정정 사항

계산값에 영향을 주는 단위, 초기조건, 식의 해석을 과제별로 정리했습니다.

| 위치 | 원문 확인 사항 | 새 풀이의 처리 |
| --- | --- | --- |
| [HW1 문제 5](../assignments/HW1/problem_05/README.md) | 최대 높이 식이 `2*V0/g*sin(theta)^2`로 인쇄되어 길이 차원이 아님 | 원문 식의 수치와 올바른 `V0^2*sin(theta)^2/(2*g)`를 별도 기록 |
| [HW2 문제 2](../assignments/HW2/README.md) | Problem 2가 두 번 등장 | 내적은 02a, 요소별 연산은 02b로 구분 |
| [HW2 문제 7](../assignments/HW2/problem_07/README.md) | 힘을 넣어야 하는 W에 500 kg 표기 | 원문 대입 수치와 g=9.81 m/s²를 적용한 N 단위 결과를 모두 제시 |
| [HW2 문제 9](../assignments/HW2/problem_09/README.md) | 외력이 F1=1, F2=2, F2=3으로 인쇄됨 | 세 번째 항을 F3=3 N으로 해석 |
| [HW2 문제 13](../assignments/HW2/problem_13/README.md) | 변위 식의 미분 계수와 속도 식의 반올림 계수가 약간 다름 | 인쇄식을 유지하고 차이를 별도 측정 |
| [HW3 문제 4](../assignments/HW3/problem_04/README.md), [HW4](../assignments/HW4/problem_01/README.md) | 각 링크 위치 식에 각 θi를 독립적으로 사용 | 관절 상대각의 누적합이 아닌 고정축 기준 절대각으로 계산 |
| [HW5 문제 1](../assignments/HW5/problem_01/README.md) | 부피 단위 일부가 m²이고 표는 m³ | 표와 세분화 조건의 m³를 적용 |
| [HW5 문제 5](../assignments/HW5/problem_05/README.md) | 초기 변위만 있고 초기 속도 없음 | v(0)=0 m/s를 명시적 가정으로 두고 코드에서 변경 가능하게 함 |
| [HW6](../assignments/HW6/README.md) | 1쪽 이내 조사 보고서 PDF 제출 | 코드 문제로 변환하지 않고 출처를 포함한 보고서 작성 |
