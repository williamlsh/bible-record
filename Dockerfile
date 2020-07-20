FROM alpine

RUN set -ex \
    && apk add --no-cache ca-certificates \
    ffmpeg \
    openssl \
    youtube-dl \
    aria2

WORKDIR /data

ENTRYPOINT [ "youtube-dl" ]

CMD ["--help"]