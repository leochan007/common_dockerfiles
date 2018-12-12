SUFFIX=

ifdef O
	SUFFIX=-o
endif

BUILD_TAG=leochan007/zentao$(SUFFIX)

#exit 0

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
	docker build $(BUILD_FLAG_A) -f Dockerfile$(SUFFIX) .

run:
	#docker run -it leochan007/zentao
	docker stop zentao_server$(SUFFIX)
	echo y|docker system prune
	docker run -d -it -p 0.0.0.0:2880:80 -v ./app/zentaopms:/app/zentaopms --name zentao_server$(SUFFIX) $(BUILD_TAG)

enter:
	docker exec -it zentao_server bash

push:
	docker push $(BUILD_TAG)

all: build push
