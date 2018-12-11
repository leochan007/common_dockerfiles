BUILD_TAG=leochan007/nodejs_base

BUILD_FLAG_T=-t $(BUILD_TAG)
ifdef VER
	BUILD_FLAG=$(BUILD_FLAG_T):$(VER)
else
	BUILD_FLAG=$(BUILD_FLAG_T)
endif

ifdef R
	BUILD_FLAG_A=$(BUILD_FLAG) --no-cache
else
	BUILD_FLAG_A=$(BUILD_FLAG)
endif

build:
	docker build $(BUILD_FLAG_A) -f Dockerfile .

push:
	docker push $(BUILD_TAG)

all: build push
