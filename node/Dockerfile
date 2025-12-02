FROM debian:11

# install ganglia
RUN apt update && apt install -y ganglia-monitor && apt clean

EXPOSE 8649

CMD ["/usr/sbin/gmond", "-f", "-c", "/etc/ganglia/gmond.conf"]
