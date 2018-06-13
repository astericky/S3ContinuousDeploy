FROM golang:1.10 as build_container

ENV APP_NAME circleci-practice
ENV TARGET_DIR /go/src/github.com/MediaMath/$APP_NAME

COPY . ${TARGET_DIR}

WORKDIR ${TARGET_DIR}

RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -a -o circleci-practice .

FROM alpine:3.6

RUN mkdir /app

WORKDIR /app
# Copy files from build_container to current container
COPY --from=build_container /go/src/github.com/MediaMath/circleci-practice/circleci-practice .

ENTRYPOINT ["/app/circleci-practice"]