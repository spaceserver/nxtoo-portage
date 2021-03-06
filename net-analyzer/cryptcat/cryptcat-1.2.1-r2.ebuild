# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-analyzer/cryptcat/cryptcat-1.2.1-r2.ebuild,v 1.1 2014/07/10 22:14:41 jer Exp $

EAPI=5
inherit eutils toolchain-funcs

DESCRIPTION="netcat clone extended with twofish encryption"
HOMEPAGE="http://farm9.org/Cryptcat/"
SRC_URI="mirror://sourceforge/${PN}/${PN}-unix-${PV}.tar"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~amd64-linux ~x86-linux"

S=${WORKDIR}/unix

src_prepare() {
	epatch "${FILESDIR}"/${P}-build.patch
	epatch "${FILESDIR}"/${P}-misc.patch
	tc-export CC CXX
}

src_install() {
	dobin cryptcat
	dodoc Changelog README README.cryptcat netcat.blurb
}
