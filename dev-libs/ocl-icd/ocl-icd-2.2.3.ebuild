# Copyright 1999-2015 Gentoo Foundation
# Copyright 2015 Dylan Baker
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils

_rel_ver="598"
DESCRIPTION="OpenCL ICD bindings"
HOMEPAGE="http://forge.imag.fr/projects/ocl-icd/"
SRC_URI="http://forge.imag.fr/frs/download.php/${_rel_ver}/${P}.tar.gz"
LICENSE="BSD-2"
DEPEND=">=dev-lang/ruby-2.1"

# These probably work on more platforms, but I can't test that, nor do I care
# particuarly since this is for Intel OpenCL support...
KEYWORDS="~x86 ~amd64"
IUSE=""
SLOT="0"
