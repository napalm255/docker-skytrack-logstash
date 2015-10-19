FROM logstash

RUN apt-get update; apt-get upgrade -y
RUN apt-get install -y git php5-cli php5-curl vim

RUN git clone https://github.com/napalm255/skytrack.org.git /opt/skytrack

COPY skytrack.conf /etc/logstash/conf.d/skytrack.conf

CMD ["logstash"]
