# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/LaTeX-Table/LaTeX-Table-1.0.6.ebuild,v 1.2 2014/10/23 19:42:53 maekke Exp $

EAPI=5

MODULE_AUTHOR=LIMAONE
MODULE_VERSION=v1.0.6
inherit perl-module

DESCRIPTION="Perl extension for the automatic generation of LaTeX tables"

LICENSE="|| ( GPL-1+ Artistic )"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

RDEPEND="
	virtual/perl-Carp
	virtual/perl-Module-Pluggable
	dev-perl/Moose
	dev-perl/MooseX-FollowPBP
	virtual/perl-Scalar-List-Utils
	dev-perl/Template-Toolkit
	virtual/perl-version
"
DEPEND="${RDEPEND}
	virtual/perl-File-Spec
	virtual/perl-Module-Build
	test? ( dev-perl/Test-NoWarnings )
"

SRC_TEST="do"