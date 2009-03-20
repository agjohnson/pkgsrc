# $NetBSD: buildlink3.mk,v 1.28 2009/03/20 19:25:36 joerg Exp $
#
# This Makefile fragment is included by packages that use epiphany.
#
# This file was created automatically using createbuildlink-3.1.
#

BUILDLINK_TREE+=	epiphany

.if !defined(EPIPHANY_BUILDLINK3_MK)
EPIPHANY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.epiphany+=		epiphany>=1.8.2
BUILDLINK_ABI_DEPENDS.epiphany?=		epiphany>=2.20.3nb2
BUILDLINK_PKGSRCDIR.epiphany?=		../../www/epiphany

.include "../../mk/bsd.fast.prefs.mk"

.include "../../devel/GConf/buildlink3.mk"
.include "../../devel/libbonobo/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../net/ORBit2/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
# XXX: should pull in ../../www/seamonkey/gecko-depends.mk
#      this is already pulled in directly by the only user, epiphany-extensions
.endif # EPIPHANY_BUILDLINK3_MK

BUILDLINK_TREE+=	-epiphany
