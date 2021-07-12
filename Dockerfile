FROM golang:alpine

LABEL maintainer="huqiu@travelsky.com"

WORKDIR /app
ADD test.go /app
RUN go build -o test test.go
EXPOSE 8080
ENTRYPOINT ["./test"]