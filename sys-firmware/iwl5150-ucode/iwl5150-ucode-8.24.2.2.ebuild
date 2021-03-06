# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-firmware/iwl5150-ucode/iwl5150-ucode-8.24.2.2.ebuild,v 1.2 2012/10/03 19:33:51 vapier Exp $

MY_PN="iwlwifi-5150-ucode"

DESCRIPTION="Intel (R) Wireless WiFi Link 5150-AGN ucode"
HOMEPAGE="http://intellinuxwireless.org/?p=iwlwifi"
SRC_URI="http://intellinuxwireless.org/iwlwifi/downloads/${MY_PN}-${PV}.tgz"

LICENSE="ipw3945"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/${MY_PN}-${PV}"

src_compile() {
	true;
}

src_install() {
	insinto /lib/firmware
	doins "${S}/iwlwifi-5150-2.ucode"

	dodoc README* || die "dodoc failed"
}
