@echo off

:: 获取当前日期
for /f "delims=" %%a in ('wmic OS Get localdatetime ^| find "."') do set datetime=%%a
set "datestamp=%datetime:~6,4%/%datetime:~4,2%/%datetime:~0,4%"

:: 进行git操作
git add .
git commit -m "update %datestamp%"
git push

echo Git操作完成: 已经添加、提交并推送了代码。
