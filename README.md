 # HustNetwork GUI

本项目基于 [原版HustNetwork](https://github.com/jiegec/hust-network) 开发，在此特别感谢原作者 [@jiegec](https://github.com/jiegec) 的开源贡献。

## 项目说明

这是一个华中科技大学校园网自动认证工具的GUI版本，提供了图形界面和系统托盘功能，方便Windows用户使用。

## 主要功能

- 图形化界面操作，无需命令行
- 支持系统托盘最小化运行
- 自动认证华科校园网
- 断线自动重连
- 配置文件保存功能
- 支持静默启动

## 使用方法

### 方式一：直接运行可执行文件（推荐）
下载发布页面的 `HustNetwork_GUI.exe`，双击运行即可。

### 方式二：从源码运行
1. 确保已安装Python 3.x
2. 安装依赖：
   ```bash
   pip install -r requirements.txt
   ```
3. 运行程序：
   ```bash
   python HustNetwork_GUI.py
   ```

## 使用说明

1. 首次运行时，输入你的校园网账号和密码
2. 点击"开启服务"按钮启动认证
3. 程序可以最小化到系统托盘
4. 可以选择"保存配置"和"静默启动"功能

## 其他说明

- 程序需要保持运行以维持认证状态
- 支持通过路由器接入校园网的设备使用
- 配置文件会保存在程序所在目录的 `config.ini` 中

## 相关项目

感谢以下项目的开发者们：

- 原版Python实现：https://github.com/jiegec/hust-network
- Rust实现：https://github.com/black-binary/hust-network-login
- Shell实现：https://github.com/jyi2ya/hust-network-login-sh

## 开源协议

本项目遵循与原项目相同的开源协议。