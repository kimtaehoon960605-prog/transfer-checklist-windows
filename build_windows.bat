@echo off
chcp 65001 >nul
setlocal
cd /d "%~dp0"
echo [1/2] 패키지 설치 중...
call npm install
if errorlevel 1 goto :error
echo [2/2] Windows portable EXE 빌드 중...
call npm run dist:win
if errorlevel 1 goto :error
echo.
echo 완료: dist\TransferChecklist.exe
pause
exit /b 0
:error
echo.
echo 빌드에 실패했습니다. 인터넷 연결과 Node.js 설치 여부를 확인하세요.
pause
exit /b 1
