@echo off
:: Set variables
set file=date.txt
set commitMessage="Update date"


for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set todayDate=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%

echo // Updated on %todayDate% >> %file%


git add .


git commit -m %commitMessage%

git push 


:: Confirmation message

pause