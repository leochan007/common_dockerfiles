BUILD_TAG=leochan007/nodejs_base

BUILD_FLAG="-t $(BUILD_TAG)"
ifdef VER
	BUILD_FLAG=$(BUILD_FLAG)":$(VER)"
endif

ifdef R
	BUILD_FLAG=$(BUILD_FLAG)" --no-cache"
endif

build:
	docker build $(BUILD_FLAG) -f Dockerfile .

push:
	docker push $(BUILD_TAG)

all: build push
