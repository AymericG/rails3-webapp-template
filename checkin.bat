@ECHO OFF
IF [%1]==[] GOTO Syntax

CALL git add .
CALL git commit -m %1
CALL git push origin master
GOTO:EOF

:Syntax
ECHO checkin.bat [ comment ]
ECHO __
ECHO Please provide a comment for commit action

:End