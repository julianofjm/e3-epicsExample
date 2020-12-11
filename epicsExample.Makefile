where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include $(E3_REQUIRE_TOOLS)/driver.makefile
include $(E3_REQUIRE_CONFIG)/DECOUPLE_FLAGS

APP:=epicsExample
APPDB:=$(APP)/Db
APPSRC:=$(APP)/src

USR_INCLUDES += -I$(where_am_I)$(APPSRC)

TEMPLATES += $(wildcard $(APPDB)/*.db)
SOURCES += $(APPSRC)/devAiSecond.c

DBDS += $(APPSRC)/aiSecond.dbd

db:

.PHONY: db

vlibs:

.PHONY: vlibs

