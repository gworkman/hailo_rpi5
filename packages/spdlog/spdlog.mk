################################################################################
#
# spdlog
#
################################################################################i

SPDLOG_VERSION = v1.14.1
SPDLOG_SITE = https://github.com/gabime/spdlog.git
SPDLOG_SITE_METHOD = git
SPDLOG_GIT_SUBMODULES = YES
SPDLOG_LICENSE = MIT
SPDLOG_LICENSE_FILES = spdlog/LICENSE

$(eval $(cmake-package))
