FROM alpine:3

COPY --from=yingzhuo/gosu     /bin/gosu     /usr/local/bin/gosu
COPY --from=yingzhuo/docktool /bin/docktool /usr/local/bin/docktool

USER root:root

ENV PATH=$PATH:/home/app/bin:/home/app/sbin

RUN addgroup -g 1001 -S app && \
    adduser  -u 1001 -S app -G app -s /bin/sh && \
    chmod +x /usr/local/bin/gosu && \
    chmod +x /usr/local/bin/docktool && \
    mkdir -p /home/app/tmp/ && \
    mkdir -p /home/app/config/ && \
    mkdir -p /home/app/data/ && \
    mkdir -p /home/app/bin/ && \
    mkdir -p /home/app/sbin/ && \
    mkdir -p /home/app/log/ && \
    rm -rf /var/log && \
    chown -R app:app /home/app/ && \
    ln -sf /home/app/log/ /var/log && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["docktool", "sleep"]