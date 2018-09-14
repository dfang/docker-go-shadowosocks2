# Builder stage
FROM golang:alpine AS builder

RUN apk add --no-cache git
RUN go get -u -v github.com/shadowsocks/go-shadowsocks2

# Final stage
FROM alpine
WORKDIR /app
COPY --from=builder /go/bin/go-shadowsocks2 /app/
ENTRYPOINT ["./go-shadowsocks2"]

ENV CIPHER=aes-128-cfb
ENV PASSWORD=pa$$w0rd
ENV PORT=12222

# CMD ["sh", "-c", "./go-shadowsocks2 -s 'ss://$CIPHER:$PASSWORD@:$PORT' -verbose"]
CMD ["-h"]