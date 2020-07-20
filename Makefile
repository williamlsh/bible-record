GIT_TAG=$(shell git describe --tags --abbrev=0)
HTTP_PROXY?=""

.PHONY: build
build:
		$(call build-image)

.PHONY: download
download:
		$(call download-bible-records)

.PHONY: clean
clean:
		@rm -f records/T*

# Build docker image for bible records downloader.
define build-image
	sudo docker build --build-arg HTTP_PROXY=${HTTP_PROXY} -t youtube-dl:${GIT_TAG} - < Dockerfile
endef

# Docker run downloader to download bible records.
define download-bible-records
		sudo docker run --rm -v $PWD/music:/data youtube-dl:${GIT_TAG} \
    		--abort-on-error \
    		--proxy ${HTTP_PROXY} \
    		-x \
    		-f bestaudio[ext=m4a] \
    		--external-downloader aria2c \
    		--external-downloader-args '-c -j 10 -x 10 -s 10 -k 1M' \
    		PLRTwKflrxkQCrP1ZbbKpdP8xoQu2AXT74 | tee log
endef
