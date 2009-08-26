# $NetBSD: buildlink3.mk,v 1.23 2009/08/26 19:57:02 sno Exp $

BUILDLINK_TREE+=	libxfce4util

.if !defined(LIBXFCE4UTIL_BUILDLINK3_MK)
LIBXFCE4UTIL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libxfce4util+=	libxfce4util>=4.4.3nb1
BUILDLINK_ABI_DEPENDS.libxfce4util?=	libxfce4util>=4.4.3nb1
BUILDLINK_PKGSRCDIR.libxfce4util?=	../../x11/libxfce4util

.include "../../devel/xfce4-dev-tools/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.endif # LIBXFCE4UTIL_BUILDLINK3_MK

BUILDLINK_TREE+=	-libxfce4util
