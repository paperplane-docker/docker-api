FROM alpine:3.23.2

RUN apk add --no-cache socat

EXPOSE 2375

ENTRYPOINT ["socat"]

CMD ["TCP-LISTEN:2375,fork", "UNIX-CONNECT:/var/run/docker.sock"]