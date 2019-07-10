FROM golang:1.11-alpine
LABEL maintainer="sudorandom <https://github.com/subtalime/go-evepraisal>"
WORKDIR $GOPATH/src/github.com/subtalime/go-evepraisal
RUN apk --update add --no-cache --virtual build-dependencies git gcc musl-dev make bash && \
        go get -u github.com/go-bindata/go-bindata/go-bindata@v1.0.0 && \
        go get -u github.com/cespare/reflex && \
        go get -u github.com/jstemmer/go-junit-report@master && \
        go get -u github.com/fzipp/gocyclo && \
        go get -u github.com/jgautheron/goconst/cmd/goconst && \
        go get -u golang.org/x/tools/cmd/goimports && \
        go get -u github.com/gordonklaus/ineffassign && \
        go get -u github.com/walle/lll/cmd/lll  && \
        go get -u github.com/client9/misspell/cmd/misspell

copy ./build /
CMD ["/build"]
