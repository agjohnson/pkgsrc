# $NetBSD: Makefile,v 1.15 2012/10/28 06:30:26 asau Exp $

DISTNAME=	Apache-Reload-0.11
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
SVR4_PKGNAME=	p5arl
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

HOMEPAGE=	http://search.cpan.org/dist/Apache-Reload/
MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Perl5 module to reload changed modules

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PKG_APACHE_ACCEPTED=	apache13

.include "../../mk/apache.mk"

PERL5_PACKLIST=		auto/Apache/Reload/.packlist

.include "../../www/ap-perl/buildlink3.mk"

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
