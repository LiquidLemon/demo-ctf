FROM alpine/socat

ADD flag /flag

EXPOSE 1000

CMD ["tcp-listen:1000,reuseaddr,fork", "open:/flag"]
