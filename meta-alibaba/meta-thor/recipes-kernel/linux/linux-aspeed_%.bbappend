FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
KERNEL_VERSION_SANITY_SKIP="1"
SRC_URI += "\
	file://alibaba.cfg \
	file://dts/aspeed-alibaba-thor.dts \
	file://dts/aspeed-g5.dtsi \
	file://dts/Makefile \
	"
do_configure_prepend() {
		cp -f ${WORKDIR}/dts/aspeed-alibaba-thor.dts ${S}/arch/arm/boot/dts/
		cp -f ${WORKDIR}/dts/aspeed-g5.dtsi ${S}/arch/arm/boot/dts/
		cp -f ${WORKDIR}/dts/Makefile ${S}/arch/arm/boot/dts/
}
