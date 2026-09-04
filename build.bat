@echo off
setlocal

REM PyInstaller's built-in PySide6 hooks collect only the Qt modules and
REM platform plugin reached from the application's static imports.  Do not use
REM --collect-all or copy the whole site-packages directory here: that pulls in
REM unused Qt Addons, plugins, translations, and duplicate data.
pyinstaller --clean ^
    --onefile ^
    --windowed ^
    --name="HustNetwork_GUI" ^
    --icon="icon/network.ico" ^
    HustNetwork_GUI.py

endlocal
