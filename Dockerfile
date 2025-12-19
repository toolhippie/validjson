FROM ghcr.io/dockhippie/alpine:3.23@sha256:f857559a03da3017be1663750116349e56d315cf0f86e64f508aa0613a9ef313
ENTRYPOINT [""]

# renovate: datasource=npm depName=valid-json-cli
ENV VALIDJSON_VERSION=1.4.1

RUN apk update && \
  apk upgrade && \
  apk add nodejs yarn && \
  yarn global add valid-json-cli@${VALIDJSON_VERSION} && \
  rm -rf /var/cache/apk/*
