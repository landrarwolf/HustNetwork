@echo off
pyinstaller --clean ^
    --onefile ^
    --windowed ^
    --icon="icon/network.ico" ^
    --add-data="icon/network.png;." ^
    --add-data="icon/network.ico;." ^
    --hidden-import=PySide6.QtCore ^
    --hidden-import=PySide6.QtGui ^
    --hidden-import=PySide6.QtWidgets ^
    --hidden-import=PySide6.QtNetwork ^
    --hidden-import=PySide6.QtSvg ^
    --hidden-import=PySide6.QtXml ^
    --collect-all=PySide6 ^
    --collect-all=shiboken6 ^
    --add-data="%VIRTUAL_ENV%\Lib\site-packages\PySide6\*;PySide6" ^
    --add-data="%VIRTUAL_ENV%\Lib\site-packages\shiboken6\*;shiboken6" ^
    HustNetwork_GUI.py