BUILD_TAG=leochan007/zentao

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

run:
	#docker run -it leochan007/zentao
	docker stop zentao_server
	echo y|docker system prune
	docker run -d -it -p 0.0.0.0:2880:80 --name zentao_server $(BUILD_TAG)

enter:
	docker exec -it zentao_server bash
	
push:
	docker push $(BUILD_TAG)

all: build push
