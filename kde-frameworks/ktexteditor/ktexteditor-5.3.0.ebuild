# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-frameworks/ktexteditor/ktexteditor-5.3.0.ebuild,v 1.2 2014/10/25 15:12:47 mrueg Exp $

EAPI=5

VIRTUALX_REQUIRED="test"
inherit kde5

DESCRIPTION="Framework providing a full text editor component"
LICENSE="LGPL-2+"
KEYWORDS=" ~amd64"
IUSE="git"

RDEPEND="
	$(add_frameworks_dep karchive)
	$(add_frameworks_dep kcodecs)
	$(add_frameworks_dep kcompletion)
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kconfigwidgets)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep kguiaddons)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kiconthemes)
	$(add_frameworks_dep kio)
	$(add_frameworks_dep kitemviews)
	$(add_frameworks_dep kjobwidgets)
	$(add_frameworks_dep kparts)
	$(add_frameworks_dep ktextwidgets)
	$(add_frameworks_dep kwidgetsaddons)
	$(add_frameworks_dep kxmlgui)
	$(add_frameworks_dep sonnet)
	dev-qt/qtgui:5
	dev-qt/qtprintsupport:5
	dev-qt/qtscript:5
	dev-qt/qtwidgets:5
	dev-qt/qtxml:5
	git? ( dev-libs/libgit2 )
"
DEPEND="${RDEPEND}
	dev-qt/qtxmlpatterns:5
	test? ( $(add_frameworks_dep kservice) )
"

RESTRICT="test"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_find_package git LibGit2)
	)

	kde5_src_configure
}
