# FastFetch for OpenWrt

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

[English](README_EN.md) | 中文

<img width="712" alt="snapshot-fastfetch" src="https://github.com/user-attachments/assets/089db6a3-dbb6-4f98-bd47-e5f0dc50b1a9" />

## 简介

FastFetch 是一个用 C 语言编写的系统信息显示工具，类似于 Neofetch，但速度更快、更加可定制。本项目是将 FastFetch 移植到 OpenWrt 平台上的版本。

## 特性

- 快速获取并显示系统信息
- 低资源占用，适合嵌入式设备
- 高度可定制的输出格式
- 支持 OpenWrt 系统

## 安装

### 通过 OpenWrt 包管理器安装

```bash
opkg update
opkg install fastfetch
```

### 从源码编译

1. 将此仓库添加到您的 OpenWrt SDK 的 `package` 目录中
2. 在 OpenWrt SDK 中运行以下命令：

```bash
make menuconfig  # 选择 Utilities -> fastfetch
make package/fastfetch/compile
```

## 使用方法

安装完成后，直接在终端中运行：

```bash
fastfetch
```

## 配置

FastFetch 可以通过配置文件进行自定义。详细配置选项请参考 [FastFetch 官方文档](https://github.com/fastfetch-cli/fastfetch)。

## 许可证

本项目采用 MIT 许可证 - 详情请参阅 [LICENSE](LICENSE) 文件。

## 致谢

- [FastFetch 原项目](https://github.com/fastfetch-cli/fastfetch)
- OpenWrt 社区

## 维护者

- ntbowen <ntbowen@example.com>

## 贡献

欢迎提交问题报告和拉取请求！
