ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = zaynixmenu
zaynixmenu_FILES = Tweak.x
zaynixmenu_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk
