FROM alpine:latest
WORKDIR /repos

COPY builder.sh /repos/builder.sh
RUN apk add --no-cache bash git docker-cli && \
    chmod +x /repos/builder.sh

CMD ["/repos/builder.sh"]
