FROM alpine/socat

RUN apk update
RUN apk add build-base
ADD src /challenge
WORKDIR /challenge
RUN make

EXPOSE 1000

CMD ["tcp-listen:1000,reuseaddr,fork", "exec:./challenge"]
