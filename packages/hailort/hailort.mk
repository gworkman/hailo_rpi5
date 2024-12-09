################################################################################
#
# hailort
#
################################################################################i

HAILORT_VERSION = 4.19.0
HAILORT_SITE =  $(call github,hailo-ai,hailort,v$(HAILORT_VERSION))
HAILORT_LICENSE = MIT
HAILORT_LICENSE_FILES = hailort/LICENSE

HAILORT_DEPENDENCIES = host-cmake


define HAILORT_CONFIGURE_CMDS
	$(CMAKE_MAKE_ENV) $(HOST_DIR)/bin/cmake -S$(@D) -B$(@D)/build \
		$(CMAKE_CONF_OPTS) \
		-DCMAKE_BUILD_TYPE=Release
endef

define HAILORT_BUILD_CMDS
	$(CMAKE_MAKE_ENV) $(MAKE) -C $(@D)/build
endef

define HAILORT_INSTALL_TARGET_CMDS
	$(CMAKE_MAKE_ENV) DESTDIR=$(TARGET_DIR) $(MAKE) -C $(@D)/build install
endef

$(eval $(cmake-package))
