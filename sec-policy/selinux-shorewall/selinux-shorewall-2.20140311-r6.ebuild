# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-shorewall/selinux-shorewall-2.20140311-r6.ebuild,v 1.1 2014/08/21 19:31:13 swift Exp $
EAPI="5"

IUSE=""
MODS="shorewall"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for shorewall"

KEYWORDS="~amd64 ~x86"