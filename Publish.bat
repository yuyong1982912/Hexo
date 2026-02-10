@echo off
setlocal

echo Step1
call hexo clean
if errorlevel 1 goto :fail

echo Step2
call hexo generate
if errorlevel 1 goto :fail

echo Step3
git add .
if errorlevel 1 goto :fail

echo Step4
git commit -m "Create new post"
if errorlevel 1 goto :fail

echo step5
git push
if errorlevel 1 goto :fail

echo All done
exit /b 0

:fail
echo Failed with error %errorlevel%
exit /b %errorlevel%
