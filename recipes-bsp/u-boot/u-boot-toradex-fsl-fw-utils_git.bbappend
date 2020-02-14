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
