FROM ghcr.io/dockhippie/alpine:3.23@sha256:1194c744e2b2a03ecb3214aecb89005830fa422b4a8f84cd12951d6d29df7a4c
ENTRYPOINT [""]

# renovate: datasource=npm depName=valid-json-cli
ENV VALIDJSON_VERSION=1.4.1

RUN apk update && \
  apk upgrade && \
  apk add nodejs yarn && \
  yarn global add valid-json-cli@${VALIDJSON_VERSION} && \
  rm -rf /var/cache/apk/*
