# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils rpm

DESCRIPTION="Zarafa WebApp plugins"
HOMEPAGE="http://zarafa.com/"

ZARAFA_WEBAPP_BUILD="final"
ZARAFA_WEBAPP_BUILDV="41348"

if [[ ${ZARAFA_WEBAPP_BUILD} == "final" ]] ; then
	SRC_URI="http://download.zarafa.com/community/${ZARAFA_WEBAPP_BUILD}/WebApp/${PV}/rhel/zarafa-webapp-${PV}-${ZARAFA_WEBAPP_BUILDV}.noarch.rpm"
else
	SRC_URI="http://download.zarafa.com/community/${ZARAFA_WEBAPP_BUILD}/WebApp/zarafa-webapp-${PV}-${ZARAFA_WEBAPP_BUILDV}.noarch.rpm"
fi

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~x86"

IUSE="plugin_extbox plugin_pdfbox"

RESTRICT="mirror"

DEPEND="www-apps/zarafa-webapp"

RDEPEND="${DEPEND}"

S="${WORKDIR}/usr/share/zarafa-webapp"

src_configure() {
	return
}

src_compile() {
	return
}

src_install() {
	einfo "Installing plugins..."
	dodir "/var/lib/zarafa-webapp/plugins"
	for plugin in extbox pdfbox; do
		if use "plugin_${plugin}"; then
			einfo " ${plugin}"
			cp -R "${S}/plugins/${plugin}" "${D}/var/lib/zarafa-webapp/plugins/"
			fowners -R apache:apache "/var/lib/zarafa-webapp/plugins/${plugin}"
		fi
	done
}
