FILESEXTRAPATHS_prepend_colibri-vf-1345 := "${THISDIR}/${PN}:"

SRC_URI_append_colibri-vf-1345 = "\
        file://fw_env.config \
        file://fw_env_mtd.config \
        file://0001-Add-UBI-support-to-userland-uboot-tools-fw_printenv-.patch"

do_install_append_colibri-vf-1345() {
        install -d ${D}${sysconfdir}
        install -m 644 ${WORKDIR}/fw_env.config ${D}${sysconfdir}/fw_env.config
        install -m 644 ${WORKDIR}/fw_env_mtd.config ${D}${sysconfdir}/fw_env_mtd.config
}

# Replace original Toradex git URL
SRC_URI_remove = "git://git.toradex.com/u-boot-toradex.git;protocol=git;branch=${SRCBRANCH}"
SRC_URI_prepend = "git://github.com/HachCompany-SC4200/fusion_seacloud_u-boot.git;branch=${SRCBRANCH} "

# To be used for master
SRCREV = "89bc9dfbacf7b64507b7ea093d4b4562a1844a1a"
SRCBRANCH="github_publication_SC4200"

# To be use during development to follow automatically new commits
#SRCREV = "${AUTOREV}"
#SRCBRANCH = "your working branch"

