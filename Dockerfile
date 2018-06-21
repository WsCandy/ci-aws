FROM wscandy/ci-base:1.1.0

MAINTAINER WsCandy <s-bridge@live.co.uk>

RUN mkdir -p /aws && \
    apk --update --virtual add groff less python py-pip jq && \
    pip install awscli && \
    apk --purge -v del py-pip && \
    rm -rf /var/cache/apk/*