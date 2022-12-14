FROM mcr.microsoft.com/cbl-mariner/base/core:2.0

# Install ISO from nvidia

WORKDIR /opt/rpms
USER root

RUN yum install -y util-linux

COPY entrypoint.sh /entrypoint.sh 
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
