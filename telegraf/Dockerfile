FROM telegraf:latest

LABEL description="Telegraf image for Netflow"

ENV DOCKER_INFLUXDB_INIT_MODE=setup \
    DOCKER_INFLUXDB_INIT_USERNAME=admin \
    DOCKER_INFLUXDB_INIT_PASSWORD=Imp0s!bl \
    DOCKER_INFLUXDB_INIT_ADMIN_TOKEN=2c99dc0f543716493b0839087253d75a6558d4e44428d8480cb69a3e4698d396 \
    DOCKER_INFLUXDB_INIT_ORG=acme \
    DOCKER_INFLUXDB_INIT_BUCKET=telegraf \
    DOCKER_INFLUXDB_INIT_RETENTION=4d \
    DOCKER_INFLUXDB_INIT_PORT=8086 \
    DOCKER_INFLUXDB_INIT_HOST=influxdb \
    TELEGRAF_CFG_PATH=./telegraf/telegraf.conf \
    GRAFANA_PORT=3000

USER root

ADD telegraf.conf /etc/telegraf/
RUN apt-get update && apt-get install -y iperf3 && apt-get clean

COPY run.sh /run.sh
RUN chmod +x /run.sh

# Set ENTRYPOINT to your script that should run Telegraf at the end
ENTRYPOINT ["/run.sh"]
