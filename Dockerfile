FROM golang:1.11-alpine
LABEL maintainer="sudorandom <https://github.com/subtalime/go-evepraisal>"
WORKDIR $GOPATH/src/github.com/evepraisal/go-evepraisal
RUN apk --update add --no-cache --virtual build-dependencies git gcc musl-dev make bash 

copy ./build /
CMD ["/build"]
