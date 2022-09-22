FROM golang:alpine

LABEL maintainer="huqiu@travelsky.com"
# 注解
WORKDIR /app
ADD test.go /app
RUN go build -o test test.go
EXPOSE 8080
ENTRYPOINT ["./test"]
