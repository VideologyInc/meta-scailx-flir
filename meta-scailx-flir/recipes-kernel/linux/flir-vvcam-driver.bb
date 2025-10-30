# Videology FLIR MIPI Driver
require flir-boson.inc
inherit module

RDEPENDS:${PN} += "scailx-devicetrees"
SRCBRANCH = "vvcam"
SRCREV = "${AUTOREV}"
SRC_URI += "file://flir-boson-vvcam.sh"

S = "${WORKDIR}/git/flir_vcam_driver"
B = "${WORKDIR}/build"

inherit cmake

DEPENDS += "isp-imx"
RDEPENDS:${PN} += "bash isp-imx-scailx"

# CFLAGS += "-DARM64 -DHAL_ALTERA -DLINUX -DLIVE_SENSOR -DSUBDEV_V4L2"
# CFLAGS += "-I${STAGING_INCDIR}/isi -I${STAGING_INCDIR}/vvcam -I${STAGING_INCDIR}/vvcam/isi"

EXTRA_OECMAKE:append = " -DCMAKE_INSTALL_PREFIX=/opt/imx8-isp/bin/ "

# do_compile(){
#     echo "Compiling vvcam driver for flir_boson"
#     ${CC} ${CFLAGS} ${LDFLAGS} -c "${S}/flir_boson.c" -o "flir_boson.o"
#     ${CC} ${CFLAGS} ${LDFLAGS} -shared -o "flir_boson.drv" "flir_boson.o"
# }

do_install:append(){
    install -d ${D}/opt/imx8-isp/bin/scailx_sensors
    install -m 0755 ${WORKDIR}/flir_boson.sh ${D}/opt/imx8-isp/bin/scailx_sensors/
}

FILES:${PN} += "/opt/imx8-isp/bin/"
