FROM golang:alpine as build

ADD . /src
RUN apk --no-cache add build-base git bzr mercurial gcc upx && \
    cd /src && \
    GOOS=linux go build -ldflags="-s -w" -o helloworld.go && \
    upx --brute /src/helloworld.go

FROM scratch
WORKDIR /usr/bin
COPY --from=build /src/helloworld.go /usr/bin
ENTRYPOINT ["helloworld.go"]