# Videology FLIR MIPI Driver
require flir-boson.inc
inherit module

RDEPENDS:${PN} += "scailx-devicetrees"
SRCBRANCH = "vvcam"
SRCREV = "${AUTOREV}"

S = "${WORKDIR}/git/flir_boson_vvcam"