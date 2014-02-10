# Copyright 2013 Kenneth Graunke
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Valve Game Distribution System"
HOMEPAGE="http://store.steampowered.com/"
SRC_URI="http://media.steampowered.com/client/installer/steam.deb"

LICENSE="Steam"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="virtual/opengl virtual/udev"
DEPEND="${RDEPEND}"

src_unpack() {
	S=${PWD}
	ar x ${DISTDIR}/${A}
}

src_install() {
	tar -C "${D}" --exclude=etc --exclude=steamdeps -xf data.tar.gz
	ln -s /bin/true "${D}/usr/bin/steamdeps"
}
