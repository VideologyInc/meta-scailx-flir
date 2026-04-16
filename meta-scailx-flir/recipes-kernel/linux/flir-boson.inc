SUMMARY = "Videology FLIR mipi driver"
LICENSE = "CLOSED"
SRC_URI = "git://github.com/VideologyInc/flir_boson_kernel_module.git;protocol=https;branch=master"
SRCREV  = "ed920a5cf24a506d2dd741789cf4c6e589fe936e"
# SRCREV  = "fd475689e9c22a6aa05ba8e3375306fc94185d46"
# SRCREV  = "1b5ff6d0e36ab72732322ca46dcd678fc7149f4c"

S = "${WORKDIR}/git"
PV = "0.1.0"

COMPATIBLE_MACHINE = ".*(mx8).*"

RM_WORK_EXCLUDE += "${PN}"
