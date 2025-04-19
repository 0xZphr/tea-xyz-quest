@echo off
:: Set variables
set file=date.txt
set commitMessage="Update date"


@echo off
for /f %%I in ('powershell -NoProfile -Command "Get-Date -Format yyyy-MM-dd"') do set todayDate=%%I
echo %todayDate%

echo // Updated on %todayDate% >> %file%


git add .


git commit -m %commitMessage%

git push 


:: Confirmation message

pause