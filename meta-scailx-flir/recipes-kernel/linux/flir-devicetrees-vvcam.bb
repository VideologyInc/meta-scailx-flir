# Videology FLIR MIPI devicetree
#

require flir-boson.inc
inherit devicetree
PROVIDES:remove = "virtual/dtb"
SRCBRANCH = "vvcam"
SRCREV = "${AUTOREV}"

RDEPENDS:${PN} += "scailx-devicetrees"

S = "${WORKDIR}/git/flir_boson_vvcam/devicetree"

pkg_postinst:${PN} () {
	echo "0x6a flir-bosonp-vvcam.dtbo" >> $D/boot/devicetree/cam-overlays
}

do_install:append(){
	install -d ${D}${exec_prefix}/src/scailx-devicetrees/src/arm64/scailx/
	cp -rf ${S}/*.dts* ${D}${exec_prefix}/src/scailx-devicetrees/src/arm64/scailx/
}

FILES:${PN}-dbg += "${exec_prefix}/src"