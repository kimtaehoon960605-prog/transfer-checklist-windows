전보 체크리스트 Windows 트레이앱 v1
====================================

[동작]
- 기존 웹 체크리스트(index.html) 양식을 그대로 앱 창에 표시합니다.
- 오른쪽 아래 시스템 트레이에 아이콘이 상주합니다.
- 트레이 아이콘 클릭: 창 열기/숨기기
- 창의 X 버튼: 프로그램 종료가 아니라 트레이로 숨기기
- 트레이 아이콘 우클릭:
  · 전보 체크리스트 열기
  · 항상 위에 표시
  · Windows 시작 시 실행
  · 종료
- 인터넷 없이도 체크리스트 자체는 동작합니다.
- 법령정보센터 같은 외부 링크는 기본 브라우저로 엽니다.

[추천 배포 방식]
1) 인터넷 되는 PC 또는 GitHub Actions에서 TransferChecklist.exe를 빌드합니다.
2) 생성된 EXE 하나만 내부망 PC로 옮깁니다.
3) 내부망 PC에서 실행하면 됩니다.

[GitHub에서 EXE 만들기]
- 이 프로젝트 전체를 GitHub 저장소에 올리면
  .github/workflows/build-windows.yml 이 자동 실행됩니다.
- GitHub 저장소 → Actions → Build Windows EXE → Run workflow 로 수동 실행도 가능합니다.
- 완료 후 Artifacts에서 TransferChecklist-Windows를 내려받으면 됩니다.

[Windows PC에서 직접 빌드]
- Node.js 22 이상 설치
- build_windows.bat 실행
- 완료 후 dist\TransferChecklist.exe 생성

[참고]
- 코드서명이 없는 자체 제작 EXE는 Windows SmartScreen 경고가 나타날 수 있습니다.
- 기관 내부 보안정책상 실행파일 반입/실행 승인이 필요한 경우 해당 절차를 따라야 합니다.
