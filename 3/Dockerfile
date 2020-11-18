FROM alpine:3

COPY --from=yingzhuo/gosu     /bin/gosu     /usr/local/bin/gosu
COPY --from=yingzhuo/docktool /bin/docktool /usr/local/bin/docktool

USER root:root

WORKDIR /opt

RUN addgroup -g 1001 -S app && \
    adduser  -u 1001 -S app -G app -s /bin/sh --no-create-home --disabled-password && \
    chmod +x /usr/local/bin/gosu && \
    chmod +x /usr/local/bin/docktool && \
    mkdir -p /var/data && \
    mkdir -p /var/tmp && \
    chmod 777 /opt && \
    chmod 777 /var/log && \
    chmod 777 /var/data && \
    chmod 777 /var/tmp && \
    chmod 777 /var/run && \
    chmod 777 /run && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["docktool", "sleep"]