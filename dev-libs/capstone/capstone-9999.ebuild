# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python{2_7,3_6} )
inherit git-r3 python-r1

DESCRIPTION="disassembly/disassembler framework + bindings"
HOMEPAGE="http://www.capstone-engine.org/"
EGIT_REPO_URI="https://github.com/aquynh/capstone.git"

LICENSE="BSD"
SLOT="0/3" # libcapstone.so.3
KEYWORDS="~amd64 ~arm ~x86"
IUSE="python"

RDEPEND=""
DEPEND="${RDEPEND}"


src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" LIBDIR="$(get_libdir)" install
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
