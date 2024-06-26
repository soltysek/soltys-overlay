# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9..13} )

inherit distutils-r1

DESCRIPTION="Pythonic JUnit/xUnit Result XML Parser"
HOMEPAGE="https://github.com/gastlygem/junitparser"
SRC_URI="https://github.com/gastlygem/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 "
