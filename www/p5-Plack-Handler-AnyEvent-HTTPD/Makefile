# $NetBSD: Makefile,v 1.5 2012/10/28 06:30:48 asau Exp $

DISTNAME=	Plack-Handler-AnyEvent-HTTPD-0.01
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Plack/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Plack-Handler-AnyEvent-HTTPD/
COMMENT=	Plack handler to run PSGI apps on AnyEvent::HTTPD
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=	# empty
PERL5_PACKLIST= auto/Plack/Handler/AnyEvent/HTTPD/.packlist

BUILD_DEPENDS+=	p5-Test-Requires-[0-9]*:../../devel/p5-Test-Requires
DEPENDS+=	p5-AnyEvent-HTTPD-[0-9]*:../../www/p5-AnyEvent-HTTPD
DEPENDS+=	p5-libwww-[0-9]*:../../www/p5-libwww
DEPENDS+=	p5-Plack>=0.9903:../../www/p5-Plack
DEPENDS+=	p5-URI-[0-9]*:../../www/p5-URI

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
