# $NetBSD: buildlink3.mk,v 1.6 2009/08/26 19:56:47 sno Exp $

BUILDLINK_TREE+=	libfwbuilder21

.if !defined(LIBFWBUILDER21_BUILDLINK3_MK)
LIBFWBUILDER21_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libfwbuilder21+=	libfwbuilder21>=2.1.16
BUILDLINK_ABI_DEPENDS.libfwbuilder21+=	libfwbuilder21>=2.1.19nb1
BUILDLINK_PKGSRCDIR.libfwbuilder21?=	../../security/libfwbuilder21

.include "../../devel/glib2/buildlink3.mk"
.include "../../net/net-snmp/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../x11/qt3-libs/buildlink3.mk"
.endif # LIBFWBUILDER21_BUILDLINK3_MK

BUILDLINK_TREE+=	-libfwbuilder21
