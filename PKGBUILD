# Maintainer: Razvan Bolundut <youremail@domain.com>
pkgname=dwm-razvan-git
pkgver=6.2.r12.8b6067b
pkgrel=1
epoch=
pkgdesc="Personal build of dwm. The list of applied patches is available on the github repository in the file entitled list-of-patches.readme"
arch=(x86_64)
url="https://github.com/razvan171514/dwm.git"
license=('MIT')
groups=()
depends=(libx11 libxinerama libxft)
makedepends=(git make)
checkdepends=()
optdepends=()
provides=(dwm)
conflicts=(dwm)
replaces=()
backup=()
options=()
install=
changelog=
source=("git+$url")
noextract=()
md5sums=('SKIP')
validpgpkeys=()

pkgver() {
	cd dwm
	printf "6.2.r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

build() {
	cd dwm
	make X11INC=/usr/include/X11 X11LIB=/usr/lib/X11
}

package() {
	cd dwm
	mkdir -p ${pkgdir}/opt/${pkgname}
	cp -rf * ${pkgdir}/opt/${pkgname}
	make PREFIX=/usr DESTDIR="${pkgdir}" clean install
	install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
	install -Dm644 README "${pkgdir}/usr/share/doc/${pkgname}/README"
}
