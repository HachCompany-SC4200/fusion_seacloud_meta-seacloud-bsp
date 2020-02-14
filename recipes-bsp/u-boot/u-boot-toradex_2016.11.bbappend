FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Dual-bank-mngt-and-change-dtb.patch \
            file://0002-Change-prompt.patch \
            file://0003-1345v6-reset-signal-mngt-and-switch-on-leds.patch \
            file://0004-Add-10ms-delay-to-improve-USB-detection.patch \
"
