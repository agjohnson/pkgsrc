# $NetBSD: Makefile,v 1.20 2012/10/23 17:18:51 asau Exp $
#

DISTNAME=	Net-Pcap-0.16
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Net-Pcap/
COMMENT=	Perl interface to pcap(3) LBL packet capture library

DEPENDS+=	p5-IO-Interface-[0-9]*:../../net/p5-IO-Interface
# Used during test, doesn't work properly:
# BUILD_DEPENDS+= p5-Test-Distribution-[0-9]*:../../devel/p5-Test-Distribution

BUILDLINK_API_DEPENDS.libpcap+=	libpcap>=0.9.5

PERL5_PACKLIST=	auto/Net/Pcap/.packlist

.include "../../lang/perl5/module.mk"
.include "../../net/libpcap/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
