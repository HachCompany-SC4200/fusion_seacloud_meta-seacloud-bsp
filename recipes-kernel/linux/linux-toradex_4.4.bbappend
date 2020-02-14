SRCBRANCH = "toradex_vf_4.4-next"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-RL78-driver.patch"
SRC_URI += "file://0002-Disable-i2c-dma-on-read.patch"
SRC_URI += "file://0003-Add-1345-dtb-files.patch"
SRC_URI += "file://0004-gpio-led-add-retain_at_shutdown.patch"
SRC_URI += "file://0005-Revert-L2-switch-modifications-for-2-ports-and-modul.patch"
SRC_URI += "file://0006-Add-RTL8812AU-preparations.patch"
SRC_URI += "file://0007-Add-RTL8812AU-driver.patch"

