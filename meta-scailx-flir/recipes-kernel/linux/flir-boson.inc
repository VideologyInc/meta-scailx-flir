SUMMARY = "Videology FLIR mipi driver"
LICENSE = "CLOSED"
SRC_URI = "git://github.com/VideologyInc/flir_boson_kernel_module.git;protocol=https;branch=master"
# Latest Boson driver update with Boson 320 vs Bosn 640 different video formats.
SRCREV  = "5e433a23c2f787551648b4d88325b36f0a88c558"
# SRCREV  = "dac2305c4383f5aae39b4a9283312bdaae86e3f6"

S = "${WORKDIR}/git"
PV = "0.1.0"

COMPATIBLE_MACHINE = ".*(mx8).*"

RM_WORK_EXCLUDE += "${PN}"
