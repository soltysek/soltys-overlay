# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 git-r3

DESCRIPTION="Tool to search for gadgets in binaries to facilitate your ROP exploitation"
HOMEPAGE="http://shell-storm.org/project/ROPgadget/"
EGIT_REPO_URI="https://github.com/JonathanSalwan/ROPgadget.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-libs/capstone[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

