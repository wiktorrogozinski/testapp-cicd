# syntax=docker/dockerfile:1
FROM golang:1.14-alpine AS build
ENV PORT 80
ADD . /testapp
WORKDIR /testapp
RUN go build /testapp/testapp.go
ENTRYPOINT ["/testapp/testapp"]

