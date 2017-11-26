# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 git-r3

DESCRIPTION="Pypandoc provides a thin wrapper for pandoc, a universal document converter."
HOMEPAGE="https://pypi.python.org/pypi/pypandoc/"
EGIT_REPO_URI="https://github.com/bebraw/pypandoc.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 "

DEPEND="app-text/pandoc
		dev-haskell/pandoc-citeproc"
