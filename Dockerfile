FROM webhippie/alpine:latest

LABEL maintainer="Thomas Boerger <thomas@webhippie.de>" \
  org.label-schema.name="Validjson" \
  org.label-schema.vendor="Thomas Boerger" \
  org.label-schema.schema-version="1.0"

ENTRYPOINT ["/usr/bin/validjson"]

RUN apk update && \
  apk upgrade && \
  apk add nodejs

RUN npm install -g valid-json-cli
