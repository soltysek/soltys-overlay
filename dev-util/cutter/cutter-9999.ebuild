# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_6 )
inherit qmake-utils git-r3

DESCRIPTION="A Qt and C++ GUI for radare2 reverse engineering framework"
HOMEPAGE="http://www.radare.org"
EGIT_REPO_URI="https://github.com/radareorg/cutter.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND="
	>=dev-qt/qtcore-5.9.1:5
	>=dev-qt/qtgui-5.9.1:5
	>=dev-qt/qtsvg-5.9.1:5
	>=dev-qt/qtwidgets-5.9.1:5
	=dev-util/radare2-9999
	>=dev-lang/python-3.6
	dev-python/notebook
	dev-python/jupyter_client
"

RDEPEND="${DEPEND}"

src_configure() {
	eqmake5 PREFIX="/usr" src
}

src_install() {
	emake INSTALL_ROOT="${D}" install
}
