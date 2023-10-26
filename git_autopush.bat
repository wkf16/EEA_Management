@echo off
for /F "tokens=1-3 delims=/" %%a in ('date /t') do (
    set dd=%%a
    set mm=%%b
    set yyyy=%%c
)
set "datestamp=%dd%/%mm%/%yyyy%"

:: 进行git操作
git add .
git commit -m "update %datestamp%"
git push

echo Git操作完成: 已经添加、提交并推送了代码。
