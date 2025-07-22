FROM alpine:3.21.3

# RCON
RUN apk add git build-base
RUN git clone https://github.com/Tiiffi/mcrcon.git /tmp/mcrcon
RUN cd /tmp/mcrcon && git checkout v0.7.2
RUN cd /tmp/mcrcon && make && make install
RUN rm -rf /tmp/mcrcon
RUN apk del git build-base

ENV MCRCON_HOST="localhost"
ENV MCRCON_PORT="25575"
ENV MCRCON_PASS="password"
