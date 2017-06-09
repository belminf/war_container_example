include Env

.PHONY: all build

all: build build-war build-docker

build:
	build-war
	build-docker	

build-docker:
	docker build -t $(NAME):$(VERSION) --build-arg NAME=$(NAME) --build-arg WAR_NAME=$(WAR_NAME) .

build-war:
	mvn package -f $(NAME)

clean:
	rm -rf $(NAME)/target
