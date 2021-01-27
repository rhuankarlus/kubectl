FROM alpine:3.7 AS BASE
LABEL maintainer="Rhuan Karlus Silva"
RUN apk --no-cache add ca-certificates openssl \
    && wget https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl -q -O /usr/local/bin/kubectl \
    && chmod a+x /usr/local/bin/kubectl \
    && apk --no-cache del ca-certificates openssl

FROM BASE AS CONTAINER_ENTRY
WORKDIR /root/
ENV KUBE_CONFIG ''
COPY start.sh .
RUN chmod +x start.sh
RUN mkdir ~/.kube && touch ~/.kube/config
CMD ["/root/start.sh"]
