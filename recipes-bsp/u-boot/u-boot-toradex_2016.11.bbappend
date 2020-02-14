FILESEXTRAPATHS_prepend_colibri-vf-1345 := "${THISDIR}/${PN}:"

# Version history
# 2016.11-2.7.3 	: original Toradex one with customized settings
# 2016.11-2.7.3.01	: customization to use dual u-boot environment in UBI partition
LOCALVERSION = "-${TDX_VER_INT}.01"

SRC_URI_append_colibri-vf-1345 = "\
            file://0001-Dual-bank-mngt-and-change-dtb.patch \
            file://0002-Change-prompt.patch \
            file://0003-Set-GPIO-in-bootloader.patch \
            file://0004-Add-10ms-delay-to-improve-USB-detection.patch \
            file://0005-Dual-u-boot-environment-stored-in-UBI-volumes.patch \
            file://0006-Disable-UBI-fastmap-autoconvert-to-avoid-UBI-corrupt.patch \
"

# Replace original Toradex git URL
SRC_URI_remove = "git://git.toradex.com/u-boot-toradex.git;branch=${SRCBRANCH}"
SRC_URI_prepend = "git://github.com/HachCompany-SC4200/fusion_seacloud_u-boot.git;branch=${SRCBRANCH} "

# To be used for master
SRCREV = "fe9f69473c8d8a93e6d4fde6a9f1d21fa70c5d48"
SRCBRANCH="github_publication_SC4200"

# To be use during development to follow automatically new commits
#SRCREV = "${AUTOREV}"
#SRCBRANCH = "your working branch"

