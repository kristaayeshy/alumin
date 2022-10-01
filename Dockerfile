FROM alpine:edge

ARG AUUID="90db98cc-4a43-4d87-9400-3bdcbf375cfb"
ARG CADDYIndexPage="https://github.com/AYJCSGM/mikutap/archive/master.zip"
ARG ParameterSSENCYPT="chacha20-ietf-poly1305"
ARG PORT=8080

ADD etc/Caddyfile /tmp/Caddyfile
ADD etc/xray.json /tmp/xray.json
ADD start.sh /start.sh

RUN apk update

RUN chmod +x /start.sh

CMD /start.sh
