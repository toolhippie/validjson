FROM ghcr.io/dockhippie/alpine:3.23@sha256:0d8b80804c02a0f215e5b26f663a643a98e7789c83ec4a6c8220a861642d5b4c
ENTRYPOINT [""]

# renovate: datasource=npm depName=valid-json-cli
ENV VALIDJSON_VERSION=1.4.1

RUN apk update && \
  apk upgrade && \
  apk add nodejs yarn && \
  yarn global add valid-json-cli@${VALIDJSON_VERSION} && \
  rm -rf /var/cache/apk/*
