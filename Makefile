DEBUG = 0
FINALPACKAGE = 1

TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard

THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Immortalizer

Immortalizer_FILES = Tweak.xm Immortalizer.m CustomToastView.m 
Immortalizer_FRAMEWORKS = UIKit CoreGraphics
Immortalizer_PRIVATE_FRAMEWORKS = UIKitCore 
Immortalizer_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += ImmortalizerPrefs
include $(THEOS_MAKE_PATH)/aggregate.mk
