# FastFetch for OpenWrt

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

English | [中文](README.md)

## Introduction

FastFetch is a system information display tool written in C, similar to Neofetch but faster and more customizable. This project is a port of FastFetch to the OpenWrt platform.

## Features

- Fast retrieval and display of system information
- Low resource usage, suitable for embedded devices
- Highly customizable output format
- Support for OpenWrt systems

## Installation

### Via OpenWrt Package Manager

```bash
opkg update
opkg install fastfetch
```

### Compile from Source

1. Add this repository to the `package` directory of your OpenWrt SDK
2. Run the following commands in your OpenWrt SDK:

```bash
make menuconfig  # Select Utilities -> fastfetch
make package/fastfetch/compile
```

## Usage

After installation, simply run in your terminal:

```bash
fastfetch
```

## Configuration

FastFetch can be customized through configuration files. For detailed configuration options, please refer to the [FastFetch official documentation](https://github.com/fastfetch-cli/fastfetch).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Original FastFetch project](https://github.com/fastfetch-cli/fastfetch)
- OpenWrt community

## Maintainer

- ntbowen <ntbowen2001@gmail.com>

## Contributing

Issue reports and pull requests are welcome!
