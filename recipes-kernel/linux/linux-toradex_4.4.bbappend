FILESEXTRAPATHS_prepend_colibri-vf-1345 := "${THISDIR}/${PN}:"

SRC_URI_append_colibri-vf-1345 = "\
        file://0001-RL78-driver.patch \
        file://0002-Disable-i2c-dma-on-read.patch \
        file://0003-Add-1345-dtb-files.patch \
        file://0004-gpio-led-add-retain_at_shutdown.patch \
        file://0005-Revert-L2-switch-modifications-for-2-ports-and-modul.patch \
        file://0006-Add-RTL8812AU-preparations.patch \
        file://0007-Add-RTL8812AU-driver.patch \
        file://0008-nvmem-Add-Vybrid-OCOTP-single-register-read-write-su.patch \
"

# Replace original Toradex git URL
SRC_URI_remove = "git://git.toradex.com/linux-toradex.git;protocol=git;branch=${SRCBRANCH}"
SRC_URI_prepend = "git://github.com/HachCompany-SC4200/fusion_seacloud_linux.git;branch=${SRCBRANCH} "

# To be used for master
SRCREV = "05b61d906c02429a2c805b3a3bda4a63bb29d608"
SRCBRANCH="github_publication_SC4200"

# To be use during development to follow automatically new commits
#SRCREV = "${AUTOREV}"
#SRCBRANCH = "feature/FCON2-875-apply-agreed-gpio-settings-based"


