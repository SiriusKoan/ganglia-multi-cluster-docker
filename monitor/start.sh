#!/bin/sh

if [ "$ROLE" = 'monitor' ]; then
  gmetad_config='/etc/ganglia/monitor-gmetad.conf'
elif [ "$ROLE" = 'cluster1-monitor' ]; then
  gmetad_config='/etc/ganglia/cluster1-gmetad.conf'
elif [ "$ROLE" = 'cluster2-monitor' ]; then
  gmetad_config='/etc/ganglia/cluster2-gmetad.conf'
else
  echo "Unknown ROLE: $ROLE"
  exit 1
fi

/usr/sbin/gmetad -c "$gmetad_config"
/usr/sbin/apachectl start
/usr/sbin/gmond -f -c /etc/ganglia/gmond.conf
