SUMMARY = "Videology FLIR mipi driver"
LICENSE = "CLOSED"
SRC_URI = "git://github.com/VideologyInc/flir_boson_kernel_module.git;branch=master"
SRCREV  = "514f995b38e26d3c121c9391fabf55e0c4d33346"

S = "${WORKDIR}/git"
PV = "0.1.0"

COMPATIBLE_MACHINE = ".*(mx8).*"

RM_WORK_EXCLUDE += "${PN}"
