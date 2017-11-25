# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit multilib toolchain-funcs git-r3

PYTHON_COMPAT=( python{2_7,3_6} )
DESCRIPTION="disassembly/disassembler framework + bindings"
HOMEPAGE="http://www.capstone-engine.org/"
GIT_REPO_URI="https://github.com/aquynh/capstone.git"

LICENSE="BSD"
SLOT="0/3" # libcapstone.so.3
KEYWORDS="~amd64 ~arm ~x86"
IUSE="python"

RDEPEND=""
DEPEND="${RDEPEND}"

src_configure() {
	{
		cat <<-EOF
		# Gentoo overrides:
		#   verbose build
		V = 1
		#   toolchain
		AR = $(tc-getAR)
		CC = $(tc-getCC)
		RANLIB = $(tc-getRANLIB)
		#  toolchain flags
		CFLAGS = ${CFLAGS}
		LDFLAGS = ${LDFLAGS}
		#  libs
		LIBDIRARCH = $(get_libdir)
		EOF
	} >> config.mk || die

}

src_install() {
	if use python; then
		cd "${WORKDIR}/${P}"/bindings
		if use python_targets_python2_7; then
			emake -C python DESTDIR="${D}" install
		fi
		if use python_targets_python3_6; then
			emake -C python DESTDIR="${D}" install3
		fi
	fi
} 
