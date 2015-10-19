FROM logstash

RUN apt-get update; apt-get upgrade -y
RUN apt-get install -y php-cli git

RUN git clone https://github.com/napalm255/skytrack.org.git /opt/skytrack

CMD ["logstash"]
