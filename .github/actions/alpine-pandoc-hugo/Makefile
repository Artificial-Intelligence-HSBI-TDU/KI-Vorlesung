.PHONY: all
all: Dockerfile
	docker build -t alpine-pandoc-hugo -f Dockerfile .

.PHONY: clean
clean:
	-docker rmi alpine-pandoc-hugo
