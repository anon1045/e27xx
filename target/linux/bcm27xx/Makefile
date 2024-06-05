# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2012-2020 OpenWrt.org
# Copyright (C) 2017 LEDE project

include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=bcm27xx
BOARDNAME:=Broadcom BCM27xx
FEATURES:=audio boot-part display ext4 fpu gpio rootfs-part rtc squashfs usb usbgadget
SUBTARGETS:=bcm2708 bcm2709 bcm2710 bcm2711 bcm2712

KERNEL_PATCHVER:=6.6

define Target/Description
	Build firmware image for Broadcom BCM27xx SoC devices.
	Currently produces SD Card image for Raspberry Pi.
endef

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES := $(filter-out urngd,$(DEFAULT_PACKAGES))
DEFAULT_PACKAGES += \
	bcm27xx-gpu-fw bcm27xx-utils \
	kmod-usb-hid \
	kmod-sound-core kmod-sound-arm-bcm2835 \
	kmod-fs-vfat kmod-nls-cp437 kmod-nls-iso8859-1 \
	partx-utils mkf2fs e2fsprogs luci luci-app-dockerman luci-app-filebrowser luci-app-ttyd block-mount blockd mount-utils btrfs-progs kmod-fs-btrfs kmod-fs-ext4 docker docker-compose dockerd fdisk cfdisk kmod-usb-storage losetup kmod-usb-storage-extras kmod-usb-storage-uas kmod-usb-net-rtl8152 kmod-veth kmod-vxlan kmod-fs-xfs nano-full parted resize2fs xfs-mkfs xfs-fsck usbutils xz tar gnupg kmod-ikconfig opkg liblxc luci-app-lxc lxc lxc-attach lxc-auto lxc-autostart lxc-checkconfig lxc-common lxc-config lxc-configs lxc-console lxc-copy lxc-create lxc-destroy lxc-device lxc-execute lxc-freeze lxc-hooks lxc-info lxc-init lxc-ls lxc-monitor lxc-monitord lxc-snapshot lxc-start lxc-stop lxc-templates lxc-top lxc-unfreeze lxc-unprivileged lxc-unshare lxc-user-nic lxc-usernsexec lxc-wait rpcd-mod-lxc gnupg2-utils gnupg2-dirmngr gnupg-utils luci-app-statistics collectd-mod-thermal collectd-mod-sensors collectd-mod-cpufreq collectd-mod-cp collectd-mod-conntrack collectd wget-ssl vsftpd-tls htop kmod-r8169 luci-app-openvpn luci-app-nlbwmon luci-proto-wireguard openvpn-easy-rsa openvpn-openssl qosify luci-app-sqm luci-app-ksmbd luci-app-command kmod-usb-net-rndis kmod-nvme

KERNELNAME:=Image dtbs

$(eval $(call BuildTarget))
