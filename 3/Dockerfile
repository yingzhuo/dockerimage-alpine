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
    chmod g+w /opt && \
    chmod g+w /var/log && \
    chmod g+w /var/data && \
    chmod g+w /var/run && \
    chmod g+w /run && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["docktool", "sleep"]