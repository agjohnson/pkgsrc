# $NetBSD: buildlink3.mk,v 1.9 2009/08/26 19:56:40 sno Exp $

BUILDLINK_TREE+=	seamonkey-gtk1

.if !defined(SEAMONKEY_GTK1_BUILDLINK3_MK)
SEAMONKEY_GTK1_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.seamonkey-gtk1+=	seamonkey-gtk1>=1.0
BUILDLINK_ABI_DEPENDS.seamonkey-gtk1?=	seamonkey-gtk1>=1.1.17nb1
BUILDLINK_PKGSRCDIR.seamonkey-gtk1?=	../../www/seamonkey-gtk1

.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/gdk-pixbuf/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../net/ORBit/buildlink3.mk"
.include "../../x11/gtk/buildlink3.mk"
.endif # SEAMONKEY_GTK1_BUILDLINK3_MK

BUILDLINK_TREE+=	-seamonkey-gtk1
