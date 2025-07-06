FROM ubuntu:22.04

# Install Coturn and curl
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y coturn curl \
 && apt-get clean

COPY turnserver.conf /etc/turnserver.conf
COPY start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]

