# Ganglia Multi-Cluster in Docker

## Setup

```
$ docker compose up -d
```

And the dashboard of main monitor is available on port 8080, while cluster1 and cluster2 are available on port 8081 and 8082, respectively.

## Architecture

![Architecture](/assets/arch.png)

Main Monitor can see all metrics, including itself, cluster1's, and cluster2's.

In cluster1's and cluster2's configs, `data_source` needs to be configured as the nodes under them. The `trusted_hosts` needs to be configured as Main Monitor.

In main monitor's config, `data_source` includes cluster1's and cluster2's IP addresses to collect metrics from them.

