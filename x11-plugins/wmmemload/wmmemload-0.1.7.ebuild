# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-plugins/wmmemload/wmmemload-0.1.7.ebuild,v 1.1 2014/10/10 20:23:43 voyageur Exp $

EAPI=5
inherit autotools eutils

DESCRIPTION="dockapp that displays memory and swap space usage"
HOMEPAGE="http://windowmaker.org/dockapps/?name=wmmemload"
SRC_URI="http://windowmaker.org/dockapps/?download=${P}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND="x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXpm"
DEPEND="${RDEPEND}
	x11-proto/xextproto
	x11-libs/libICE
	x11-libs/libXt"

S=${WORKDIR}/dockapps

src_prepare() {
	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" install
	dodoc AUTHORS ChangeLog THANKS
}
