FROM caddy:2.9.1-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-security@v1.1.27 \
    --with github.com/caddy-dns/cloudflare

FROM caddy:2.9.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy