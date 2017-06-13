include Env

.PHONY: all build-docker build-java

all: build-docker build-java

build-java:
	mvn package -f $(NAME)

build-docker:
	docker build -t $(NAME):$(VERSION) --build-arg NAME=$(NAME) --build-arg WAR_NAME=$(WAR_NAME) .

clean:
	rm -rf $(NAME)/target
