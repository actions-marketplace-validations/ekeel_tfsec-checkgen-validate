FROM alpine:3.16.2

ENV tfsec_version=1.28.0

COPY entrypoint.sh /entrypoint.sh

RUN cd /tmp && wget https://github.com/aquasecurity/tfsec/releases/download/v${tfsec_version}/tfsec-checkgen-linux-amd64
RUN cd /tmp && mv tfsec-checkgen-linux-amd64 /usr/bin/tfsec-checkgen && chmod +x /usr/bin/tfsec-checkgen

ENTRYPOINT ["/entrypoint.sh"]