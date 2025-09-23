# Videology FLIR MIPI Driver
require flir-boson.inc
inherit module

RDEPENDS:${PN} += "scailx-devicetrees"

S = "${WORKDIR}/git/flir_boson_v4l2"