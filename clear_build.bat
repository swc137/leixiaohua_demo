@echo off
@echo ɾ��windows�����е���ʱ�ļ�
del *.pdb *.obj *.ilk *.pch *.res *.idb *.ncb *.exp buildlog.htm *.suo *.tmp *.vcxproj.user *.log *.tlog *.ipch *.sdf /S /Q /A H
rd "%~dp0\temp\" /S /Q

for /f "delims=" %%i in ('dir /ad /b /s "temp"') do (
   rem rd /s /q "%%i"
   echo %%i
)

@echo ɾ��android�����е���ʱ�ļ�
del *.tlog  /S /Q
rd "%~dp0\proj.android\libs\" /S /Q
rd "%~dp0\proj.android\obj\" /S /Q
rd "%~dp0\proj.android\bin\" /S /Q

@echo ɾ��codeblocks�����е���ʱ�ļ�
rd "%~dp0\proj.blocks\obj\" /S /Q
rd "%~dp0\proj.blocks\bin\" /S /Q
del %~dp0\proj.blocks\*.layout /S /Q
del %~dp0\proj.blocks\*.depend /S /Q

@echo ��ɣ�
pause