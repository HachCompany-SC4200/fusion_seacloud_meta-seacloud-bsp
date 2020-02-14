SRCBRANCH = "toradex_vf_4.4-next"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-RL78-driver.patch"
SRC_URI += "file://0002-Disable-i2c-dma-on-read.patch"
SRC_URI += "file://0003-Add-1345-dtb-files.patch"
SRC_URI += "file://0004-Revert-L2-switch-modifications-for-2-ports-and-modul.patch"


