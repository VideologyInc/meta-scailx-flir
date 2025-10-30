FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

# add raw 12 and raw14 formats to csi2sam, isi inpuit and output.
# Add format-code propagation from sensor to ISI.

SRC_URI += " \
    file://0003-csi2-sam-add-formats-and-negotiate-formats-with-SRC.patch \
    file://0002-isi-cap-add-RAW-input-modes-negotiate-src-fmt-to-req.patch \
    file://0001-isi-fmt-add-extra-ISI-output-modes.patch \
"
