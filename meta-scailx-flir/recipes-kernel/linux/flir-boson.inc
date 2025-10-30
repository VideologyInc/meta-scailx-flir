SUMMARY = "Videology FLIR mipi driver"
LICENSE = "CLOSED"
SRC_URI = "git://github.com/VideologyInc/flir_boson_kernel_module.git;protocol=https;branch=master"
SRCREV  = "1b5ff6d0e36ab72732322ca46dcd678fc7149f4c"

S = "${WORKDIR}/git"
PV = "0.1.0"

COMPATIBLE_MACHINE = ".*(mx8).*"

RM_WORK_EXCLUDE += "${PN}"
