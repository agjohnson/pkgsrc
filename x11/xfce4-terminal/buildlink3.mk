# $NetBSD: buildlink3.mk,v 1.7 2009/08/26 19:57:03 sno Exp $

BUILDLINK_TREE+=	xfce4-terminal

.if !defined(XFCE4_TERMINAL_BUILDLINK3_MK)
XFCE4_TERMINAL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xfce4-terminal+=	xfce4-terminal>=0.2.8.3nb1
BUILDLINK_ABI_DEPENDS.xfce4-terminal?=	xfce4-terminal>=0.2.8.3nb4
BUILDLINK_PKGSRCDIR.xfce4-terminal?=	../../x11/xfce4-terminal

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../x11/xfce4-exo/buildlink3.mk"
.include "../../x11/vte/buildlink3.mk"
.include "../../devel/xfce4-dev-tools/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.endif # XFCE4_TERMINAL_BUILDLINK3_MK

BUILDLINK_TREE+=	-xfce4-terminal
