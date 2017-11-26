# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 git-r3

DESCRIPTION="Pwntools is a CTF framework and exploit development library. Written in Python, it is designed for rapid prototyping and development, and intended to make exploit writing as simple as possible."
HOMEPAGE="https://github.com/Gallopsled/pwntools#readme"
EGIT_REPO_URI="https://github.com/Gallopsled/pwntools.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 "

DEPEND="dev-lang/python:2.7
		>=dev-python/paramiko-1.15.2
		>=dev-python/mako-1.0.0
		>=dev-python/pyelftools-0.2.4
		dev-libs/capstone[python]
		>=app-misc/ROPgadget-5.3
		>=dev-python/pyserial-2.7
		>=dev-python/requests-2.0.0
		>=dev-python/pip-6.0.8
		>=dev-python/tox-1.8.1
		>=dev-python/pygments-2.0
		dev-python/PySocks
		dev-python/python-dateutil
		dev-python/pypandoc
		dev-python/packaging
		>=dev-python/psutil-3.3.0
		dev-python/intervaltree
		dev-util/unicorn[python]"
