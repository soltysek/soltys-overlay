# Copyright 2019-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{8,9} )

inherit distutils-r1 git-r3

DESCRIPTION="Enable scripting of radare2"
HOMEPAGE="http://rada.re/r/"
EGIT_REPO_URI="https://github.com/radare/radare2-r2pipe.git"

LICENSE="MIT"
SLOT="0"
DEPEND=">=dev-util/radare2-9999"

python_compile() {
	cd "$WORKDIR/$P"/python
	distutils-r1_python_compile
}

python_install() {
	cd "$WORKDIR/$P"/python
	distutils-r1_python_install
}
