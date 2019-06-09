# Builder stage
FROM golang:alpine AS builder

RUN apk add --no-cache git
RUN go get -u -v github.com/shadowsocks/go-shadowsocks2

# Final stage
FROM alpine:3.9.4
COPY --from=builder /go/bin/go-shadowsocks2 /usr/local/bin/
# ENTRYPOINT ["go-shadowsocks2"]

ENV CIPHER=CHACHA20-IETF
ENV PASSWORD=secret
ENV PORT=12222
EXPOSE ${PORT}

# CMD ["-h"]
CMD ["sh", "-c", "go-shadowsocks2 -s ss://${CIPHER}:${PASSWORD}@:${PORT} -verbose"]
