# Copyright 1999-2015 Gentoo Foundation
# Copyright 2015 Dylan Baker
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit eutils python-any-r1 cmake-utils

DESCRIPTION="The Beignent OpenCL driver for Intel Hardware"
HOMEPAGE="http://cgit.freedesktop.org/beignet/"
SRC_URI="https://01.org/sites/default/files/${P}-source.tar.gz"
LICENSE="LGPL-21"
SLOT="0"
KEYWORDS="~x86 ~amd64"
RDEPEND="
	virtual/glu
	>=x11-libs/libSM-1.2.2-r1
	>=x11-libs/libXext-1.3.3
	>=media-libs/mesa-10.4
	sys-libs/ncurses:5
	>=dev-libs/ocl-icd-2.1.3
"

DEPEND="
	${RDEPEND}
	sys-devel/clang
	dev-util/cmake
"
S="${WORKDIR}/Beignet-${PV}-Source"

src_configure() {
	cmake-utils_src_configure
}
