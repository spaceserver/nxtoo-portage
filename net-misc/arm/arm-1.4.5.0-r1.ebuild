# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-misc/arm/arm-1.4.5.0-r1.ebuild,v 1.1 2014/10/09 09:32:33 blueness Exp $

EAPI="3"
PYTHON_DEPEND="2:2.5"
PYTHON_USE_WITH="ncurses"

inherit python distutils

DESCRIPTION="A ncurses-based status monitor for Tor relays"
HOMEPAGE="http://www.atagar.com/arm/"
SRC_URI="http://www.atagar.com/arm/resources/static/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~x86-fbsd"
IUSE=""

# Note: While we depend on net-misc/tor, we strictly speaking
# don't have to because it could run on a different machine.
RDEPEND="
	>=net-misc/tor-0.2.1.27
	app-admin/sudo
	sys-apps/man
	sys-process/lsof
	net-dns/bind-tools"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${PN}"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}

src_install() {
	distutils_src_install --docPath "${EPREFIX}"/usr/share/doc/${PF}
}

pkg_postinst() {
	elog "Some graphing data issues have been noted in testing"
	elog "when run as root. It is not recommended to run arm as"
	elog "root until those issues have been isolated and fixed."
	elog
	elog "Trouble with graphs under app-misc/screen? Try:"
	elog 'TERM="rxvt-unicode" arm'
}
