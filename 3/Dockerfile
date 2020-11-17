FROM alpine:3

COPY --from=yingzhuo/gosu     /bin/gosu     /usr/local/bin/gosu
COPY --from=yingzhuo/docktool /bin/docktool /usr/local/bin/docktool

USER root:root

RUN addgroup -g 1001 -S app && \
    adduser  -u 1001 -S app -G app -s /bin/sh --no-create-home --disabled-password && \
    addgroup -S app root && \
    chmod +x /usr/local/bin/gosu && \
    chmod +x /usr/local/bin/docktool && \
    mkdir -p /var/data && \
    chmod g+x /opt && \
    chmod g+x /var/log && \
    chmod g+x /var/data && \
    chmod g+x /var/run && \
    chmod g+x /run && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["docktool", "sleep"]