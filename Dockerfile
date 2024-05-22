FROM nginx:1-alpine
ARG HOST_ARCH
RUN mkdir /tmp/go-subst && cd /tmp/go-subst && \
    wget -O go-subst.tar.gz https://github.com/ToshihitoKon/go-subst/releases/download/v0.0.2/go-subst_Linux_${HOST_ARCH}.tar.gz && \
    tar xf go-subst.tar.gz && \
    install go-subst /usr/local/bin/
ENTRYPOINT [ "/entrypoint.sh" ]

COPY entrypoint.sh /
COPY ./files /files
