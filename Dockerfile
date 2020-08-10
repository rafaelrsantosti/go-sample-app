FROM golang:1.8-alpine as BUILD
ADD . /go/src/app
RUN go install app

FROM alpine:latest
COPY --from=0 /go/bin/app .
CMD ["./app"]
