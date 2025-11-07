AESDCHAR_VERSION = e9efb87fcd0ab0a36bc5c320a64dbadb522df5fb
AESDCHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-woytzek.git
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES

AESDCHAR_CFLAGS += -DUSE_AESD_CHAR_DEVICE=1

define KERNEL_MODULE_BUILD_CMDS
    $(MAKE) -C '$(@D)' LINUX_DIR='$(LINUX_DIR)' CC='$(TARGET_CC)' LD='$(TARGET_LD)' modules
endef

AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

$(eval $(kernel-module))
$(eval $(generic-package))
