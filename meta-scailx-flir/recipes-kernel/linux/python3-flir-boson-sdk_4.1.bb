DESCRIPTION = "Flir Boson Python SDK for thermal imager over mipi"

require flir-boson.inc
inherit python_setuptools_build_meta
DEPENDS += "python3-setuptools-scm-native"

FILES:${PN} += "${base_bindir}/"

RDEPENDS:${PN} += "${PYTHON_PN}-fcntl ${PYTHON_PN}-ctypes ${PYTHON_PN}-smbus2"

S = "${WORKDIR}/git"