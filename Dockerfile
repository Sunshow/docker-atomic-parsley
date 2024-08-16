FROM alpine:3.20
RUN apk --update add libstdc++ unzip wget && rm -rf /var/cache/apk/* 
RUN wget "https://github.com/wez/atomicparsley/releases/download/20240608.083822.1ed9031/AtomicParsleyAlpine.zip" \
    && unzip AtomicParsleyAlpine.zip -d /usr/local/bin \
    && rm AtomicParsleyAlpine.zip && chmod +x /usr/local/bin/AtomicParsley

ENTRYPOINT ["AtomicParsley"]