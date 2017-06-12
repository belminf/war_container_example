include Env

.PHONY: all build

all: build build-war build-docker

build:
	build-war

build-docker:
	docker build -t $(NAME):$(VERSION) --build-arg NAME=$(NAME) --build-arg WAR_NAME=$(WAR_NAME) .

build-war:
	apt-get install -y --no-install-recommends maven
	mvn package -f $(NAME)

clean:
	rm -rf $(NAME)/target
