# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-misc/delay/delay-1.6-r2.ebuild,v 1.1 2014/10/25 12:50:52 jer Exp $

EAPI=5
inherit autotools eutils toolchain-funcs

DESCRIPTION="Sleeplike program that counts down the number of seconds specified"
HOMEPAGE="http://onegeek.org/~tom/software/delay/"
SRC_URI="http://onegeek.org/~tom/software/delay/dl/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~mips ~ppc ~ppc64 ~x86 ~amd64-linux ~ia64-linux ~x86-linux ~ppc-macos"

RDEPEND="sys-libs/ncurses"
DEPEND="
	${RDEPEND}
	virtual/pkgconfig
"

src_prepare() {
	epatch \
		"${FILESDIR}"/${P}-headers.patch \
		"${FILESDIR}"/${P}-tinfo.patch

	eautoreconf
}
