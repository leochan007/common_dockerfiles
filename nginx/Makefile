BUILD_TAG=leochan007/nginx

ifdef VER
	BUILD_TAG=$(BUILD_TAG):$(VER)
endif

build:
	docker build -t $(BUILD_TAG) -f Dockerfile .

push:
	docker push $(BUILD_TAG)
	