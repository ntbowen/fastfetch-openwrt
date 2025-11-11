# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2024 OpenWrt.org

include $(TOPDIR)/rules.mk

PKG_NAME:=fastfetch
PKG_VERSION:=2.55.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/fastfetch-cli/fastfetch/archive/refs/tags/
PKG_HASH:=d99ea4f5398ef05059771aa0b1aeda4bc1d01d951ae91d93c5b6dfb550649dbe
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

PKG_MAINTAINER:=ntbowen <ntbowen2001@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1
CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/fastfetch
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=A fast system information tool
  URL:=https://github.com/fastfetch-cli/fastfetch
  DEPENDS:=+libpci +libcap +libudev-zero +libpthread
endef

define Package/fastfetch/description
  fastfetch is a neofetch-like tool for fetching system information and displaying them
  in a pretty way. It is written in C and designed to be highly customizable and
  extremely fast.
endef

CMAKE_OPTIONS += \
	-DCMAKE_BUILD_TYPE=Release \
	-DENABLE_VULKAN=OFF \
	-DENABLE_WAYLAND=OFF \
	-DENABLE_X11=OFF \
	-DENABLE_XCB=OFF \
	-DENABLE_GIO=OFF \
	-DENABLE_CHAFA=OFF \
	-DENABLE_ZLIB=OFF \
	-DENABLE_IMAGEMAGICK6=OFF \
	-DENABLE_IMAGEMAGICK7=OFF \
	-DENABLE_OPENCL=OFF \
	-DENABLE_CUDA=OFF \
	-DENABLE_NVML=OFF \
	-DENABLE_SQLITE3=OFF \
	-DENABLE_RPM=OFF \
	-DENABLE_DBUS=OFF \
	-DENABLE_XFCONF=OFF \
	-DENABLE_LIBPCI=ON \
	-DENABLE_THREADS=OFF \
	-DENABLE_DIRECTX=OFF \
	-DENABLE_OPENGL=OFF

define Package/fastfetch/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/fastfetch $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/flashfetch $(1)/usr/bin/ || true
endef

$(eval $(call BuildPackage,fastfetch))
