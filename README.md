# HustNetwork GUI

HustNetwork GUI 是一款面向 Windows 的华中科技大学校园网自动认证工具，提供图形界面与系统托盘功能，支持断线自动重连。本仓库将作为独立项目持续维护。

## 项目说明

程序通过图形界面简化校园网认证操作，适合希望在 Windows 上长期后台运行认证服务的用户，无惧断线，后台自动重连（适合搭配远程连接使用）。

## 主要功能

- 图形化界面操作，无需命令行
- 支持系统托盘最小化运行
- 自动认证华科校园网
- 断线自动重连
- 配置文件保存功能
- 支持静默启动
- 支持程序图标显示

## 使用方法

### 方式一：直接运行可执行文件（推荐）

从 Releases 页面下载 `HustNetwork_GUI.exe`，双击运行即可。

### 方式二：从源码运行

1. 确保已安装 Python 3.x。
2. 安装依赖：

   ```bash
   pip install -r requirements.txt
   ```

3. 运行程序：

   ```bash
   python HustNetwork_GUI.py
   ```

### 方式三：从源码打包（开发者使用）

1. 安装运行和打包依赖：

   ```bash
   pip install -r requirements-build.txt
   ```

2. 如修改过图标资源，重新编译资源文件：

   ```bash
   pyside6-rcc resources.qrc -o resources_rc.py
   ```

3. 使用构建脚本：

   ```powershell
   .\build.bat
   ```

   成品位于 `dist\HustNetwork_GUI.exe`。发布时只需交付此文件（或它的压缩包），不要将 `.venv`、`build`、`dist` 以外的构建目录或 pip 缓存一并发布。

## 使用说明

1. 首次运行时，输入校园网账号和密码。
2. 点击“开启服务”启动认证。
3. 程序可以最小化到系统托盘。
4. 可按需启用“保存配置”和“静默启动”。
5. 断线重连间隔必须为 1 到 86400 秒之间的整数；默认值为 15 秒。

## 其他说明

- 程序需要保持运行以维持认证状态
- 支持通过路由器接入校园网的设备使用
- 配置文件保存在程序所在目录的 `config.ini` 中
- 程序图标使用 Qt 资源系统管理，打包后无需额外的图标文件
- `requirements.txt` 只包含运行依赖；`requirements-build.txt` 额外包含 PyInstaller。
- 构建脚本只收集程序实际导入的 Qt Essentials 组件及必要的平台插件，不会再全量复制 PySide6/Shiboken6。`--onefile` 模式启动时会短暂解压到系统临时目录，这是 PyInstaller 的正常行为。

## 目录结构

```text
.
├── HustNetwork_GUI.py    # 主程序
├── build.bat             # Windows 构建脚本
├── requirements.txt      # 运行依赖
├── requirements-build.txt # 构建依赖
├── resources.qrc         # Qt 资源文件
├── resources_rc.py       # 编译后的资源文件
└── icon/                 # 图标文件目录
    ├── network.ico       # Windows 程序图标
    └── network.png       # 系统托盘图标
```

## 开源协议

本项目采用 [MIT License](LICENSE)。

## 致谢

本项目最初由已归档的 [ywang-wnlo/HustNetwork](https://github.com/ywang-wnlo/HustNetwork) 演进而来。项目基于 [原版 HustNetwork](https://github.com/jiegec/hust-network) 开发，在此特别感谢原作者 [@jiegec](https://github.com/jiegec) 的开源贡献。

同时感谢以下相关项目的开发者：

- [Rust 实现](https://github.com/black-binary/hust-network-login)
- [Shell 实现](https://github.com/jyi2ya/hust-network-login-sh)
