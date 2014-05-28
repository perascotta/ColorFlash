ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = screenflash
screenflash_FILES = Tweak.xm
screenflash_FRAMEWORKS = UIKit Foundation
screenflash_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 '-'"
SUBPROJECTS += prefbundle
include $(THEOS_MAKE_PATH)/aggregate.mk
