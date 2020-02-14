SRCBRANCH = "toradex_vf_4.4-next"

FILESEXTRAPATHS_prepend_colibri-vf-1345 := "${THISDIR}/${PN}:"

SRC_URI_append_colibri-vf-1345 = "\
        file://0001-RL78-driver.patch \
        file://0002-Disable-i2c-dma-on-read.patch \
        file://0003-Add-1345-dtb-files.patch \
        file://0004-gpio-led-add-retain_at_shutdown.patch \
        file://0005-Revert-L2-switch-modifications-for-2-ports-and-modul.patch \
	file://0006-Add-RTL8812AU-preparations.patch \
	file://0007-Add-RTL8812AU-driver.patch \
"


