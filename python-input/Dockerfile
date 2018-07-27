FROM alpine/socat

RUN apk update
RUN apk add python
ADD src /challenge
WORKDIR /challenge

EXPOSE 1000

CMD ["tcp-listen:1000,reuseaddr,fork,nodelay", "exec:./challenge.py"]
