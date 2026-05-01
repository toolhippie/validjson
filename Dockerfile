FROM ghcr.io/dockhippie/alpine:3.23@sha256:3bf7f59a8892a380680d78bca46222cf369b5666a04e682c6a9622b32391fd8d
ENTRYPOINT [""]

# renovate: datasource=npm depName=valid-json-cli
ENV VALIDJSON_VERSION=1.4.1

RUN apk update && \
  apk upgrade && \
  apk add nodejs yarn && \
  yarn global add valid-json-cli@${VALIDJSON_VERSION} && \
  rm -rf /var/cache/apk/*
