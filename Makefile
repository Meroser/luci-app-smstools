# Copyright (C) 2016 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 1.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for smstools
LUCI_DEPENDS:=+smstools3 +wget +iconv +curl
LUCI_PKGARCH:=all
PKG_NAME:=luci-app-smstools
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature

