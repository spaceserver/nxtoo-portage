# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-drivers/xf86-input-evdev/xf86-input-evdev-2.9.0.ebuild,v 1.2 2014/10/23 15:07:26 chithanh Exp $

EAPI=5
inherit linux-info xorg-2

DESCRIPTION="Generic Linux input driver"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=x11-base/xorg-server-1.12[udev]
	dev-libs/libevdev
	sys-libs/mtdev"
DEPEND="${RDEPEND}
	>=x11-proto/inputproto-2.1.99.3
	>=sys-kernel/linux-headers-2.6"

pkg_pretend() {
	if use kernel_linux ; then
		CONFIG_CHECK="~INPUT_EVDEV"
	fi
	check_extra_config
}
