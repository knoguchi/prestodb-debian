# Master MakeFile

# default values
server_version = 0.189
client_version = 0.189

# override by config.mk if exists
ifneq ($(wildcard config.mk),)
	include config.mk
endif

# export variables for sub make
export server_version
export client_version

SUBDIRS = client server

all: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: $(SUBDIRS)
