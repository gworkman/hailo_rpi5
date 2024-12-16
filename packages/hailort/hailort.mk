################################################################################
#
# hailort
#
################################################################################i

HAILORT_VERSION = v4.19.0
HAILORT_SITE = https://github.com/hailo-ai/hailort.git
HAILORT_SITE_METHOD = git
HAILORT_GIT_SUBMODULES = YES
HAILORT_LICENSE = MIT
HAILORT_LICENSE_FILES = hailort/LICENSE
HAILORT_SUPPORTS_IN_SOURCE_BUILD = NO

HAILORT_DEPENDENCIES = spdlog protobuf eigen

HAILORT_CONF_OPTS += -DCMAKE_TOOLCHAIN_FILE=$(CMAKE_TOOLCHAIN_FILE)
HAILORT_CONF_OPTS += -DCMAKE_INSTALL_PREFIX=$(TARGET_DIR)
HAILORT_CONF_OPTS += -DEigen3_DIR=$(STAGING_DIR)/usr/share/eigen3/cmake
HAILORT_CONF_OPTS += -DSPDLOG_DIR=$(STAGING_DIR)/usr
HAILORT_CONF_OPTS += -DPROTOBUF_DIR=$(STAGING_DIR)/usr

$(eval $(cmake-package))
