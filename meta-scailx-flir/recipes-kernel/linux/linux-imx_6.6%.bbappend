FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# add monochrome passthrough modes to ISI
SRC_URI:append = " file://0043-imx8-isi-cap.c-improve-output-in-case-of-discarded-b.patch "
SRC_URI:append = " file://0010-imx8-media-dev-fix-source-sink-pad-setup-and-probing.patch "
SRC_URI:append = " file://0009-imx8-mipi-cs2-sam-Add-Raw12-and-Raw14-formats.patch "
SRC_URI:append = " file://0008-imx8-isi-core.h-Add-MXC_ISI_OUT_FMT_RAW14-enum.patch "
SRC_URI:append = " file://0007-imx8-isi-fmt.c-Add-RAW8-RAW10-RAW12-and-RAW14-format.patch "
SRC_URI:append = " file://0005-imx8-isi-hw.c-Do-not-set-RAW-to-MSB-align-reserved-b.patch "
SRC_URI:append = " file://0004-imx8-isi-cap.c-Allow-format-code-propagation-and-add.patch "

# SRC_URI += "file://0002-media-imx8-Added-missing-pixelformats.patch"
# SRC_URI += "file://0003-media-imx8-Fixed-missing-pixelformat-negotiation-bet.patch"
# SRC_URI += "file://0004-media-imx8-Added-v4l2-controls-to-csis-driver-for-ad.patch"
