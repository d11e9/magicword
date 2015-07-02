container_name = "magicword.info"

all: build stop run

stop:
	docker kill $(container_name); \
	docker rm $(container_name);

build:
	docker build -t $(container_name) .

run:
	docker run -d --link redis:redis --name $(container_name) -t $(container_name); docker logs -f $(container_name);

