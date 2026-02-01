FROM ghcr.io/dockhippie/alpine:3.23@sha256:290fa97fc3c00802b2a80f40cc21cdd5e6534a4422dcdb0abd57738ac08e86bf
ENTRYPOINT [""]

# renovate: datasource=npm depName=valid-json-cli
ENV VALIDJSON_VERSION=1.4.1

RUN apk update && \
  apk upgrade && \
  apk add nodejs yarn && \
  yarn global add valid-json-cli@${VALIDJSON_VERSION} && \
  rm -rf /var/cache/apk/*
