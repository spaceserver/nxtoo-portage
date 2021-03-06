# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-misc/lxqt-openssh-askpass/lxqt-openssh-askpass-0.7.0.ebuild,v 1.3 2014/05/29 14:51:12 mrueg Exp $

EAPI=5
inherit cmake-utils

DESCRIPTION="LXQt OpenSSH user password prompt tool"
HOMEPAGE="http://www.lxqt.org/"

if [[ ${PV} = *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="git://git.lxde.org/git/lxde/${PN}.git"
else
	SRC_URI="http://lxqt.org/downloads/${PV}/${P}.tar.xz"
	KEYWORDS="~amd64 ~arm ~x86"
fi

LICENSE="LGPL-2.1+"
SLOT="0"

S=${WORKDIR}

DEPEND="dev-qt/qtcore:4
	dev-qt/qtdbus:4
	dev-qt/qtgui:4
	lxqt-base/liblxqt"
RDEPEND="${DEPEND}"

src_install(){
	cmake-utils_src_install
	doman man/*.1

	echo "SSH_ASKPASS='${EPREFIX}/usr/bin/lxqt-openssh-askpass'" >> "${T}/99${PN}" \
		|| die
	doenvd "${T}/99${PN}"
}
