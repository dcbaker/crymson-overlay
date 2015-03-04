# Copyright 1999-2015 Gentoo Foundation
# Copyright 2015 Dylan Baker
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils

DESCRIPTION="OpenCL Headers provided by the Khronos Group"

HOMEPAGE="https://www.khronos.org/registry/"
SRC_URI="https://www.khronos.org/registry/khronos_headers.tgz"
LICENSE="MIT"

# These probably work on more platforms, but I can't test that, nor do I care
# particuarly since this is for Intel OpenCL support...
KEYWORDS="~x86 ~amd64"
IUSE=""
SLOT="0"

# Source directory; the dir where the sources can be found (automatically
# unpacked) inside ${WORKDIR}.  The default value for S is ${WORKDIR}/${P}
# If you don't need to change it, leave the S= line out of the ebuild
# to keep it tidy.
S=${WORKDIR}/khronos_headers/CL1.2/CL/

src_compile() { :; }

# Don't bother installing the d3d headers
src_install() {
	insinto /usr/include/CL/
	doins cl.h cl.hpp cl_platform.h cl_ext.h cl_gl.h cl_egl.h cl_gl_ext.h opencl.h
}
