FROM alpine:3

COPY --from=yingzhuo/gosu     /bin/gosu     /usr/local/bin/gosu
COPY --from=yingzhuo/docktool /bin/docktool /usr/local/bin/docktool

USER root:root

RUN addgroup -g 1001 -S app && \
    adduser  -u 1001 -S app -G app && \
#    adduser  -u 1001 -S app -G app --no-create-home && \
    chmod +x /usr/local/bin/gosu && \
    chmod +x /usr/local/bin/docktool && \
    mkdir -p /home/app/tmp/ && \
    mkdir -p /home/app/config/ && \
    mkdir -p /home/app/data/ && \
    mkdir -p /home/app/bin/ && \
    mkdir -p /home/app/log/ && \
    chown -R /home/app/ && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["docktool", "sleep"]