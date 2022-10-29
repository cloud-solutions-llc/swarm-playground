# Docker Swarm Playground

---

# How to run it
 
### Modify your hosts file by path: ```/etc/hosts```

```shell
127.0.0.1 dashboard.traefik.int
127.0.0.1 kibana.swarm.int
127.0.0.1 influxdb.swarm.int
127.0.0.1 grafana.swarm.int
127.0.0.1 jaeger.swarm.int
```

### Add the labels to your nodes

```shell
docker node update --label-add mysql=yes {node id}
docker node update --label-add redis-cache=yes {node id}
docker node update --label-add redis-queue=yes {node id}
docker node update --label-add influxdb=yes {node id}
docker node update --label-add grafana=yes {node id}
docker node update --label-add kibana=yes {node id}
docker node update --label-add elasticsearch=yes {node id}
```

### Next, do the main things:
1. Init the Docker swarm
2. Create internal network: ```make network```
3. Deploy the gateway: ```make gateway```
4. Deploy the storages ```make storages```


# Services

| HTTP URL                                              | Service               |
|-------------------------------------------------------|-----------------------|
| [dashboard.traefik.int](http://dashboard.traefik.int) | The trafiek dashboard |
| [influxdb.swarm.int](http://influxdb.swarm.int)       | The indluxdb dashboard |
| [grafana.swarm.int](http://grafana.swarm.int)         | The grafana dashboard |
| [jaeger.swarm.int](http://jaeger.swarm.int)           | The jaeger dashboard  |


# Notes

### Telegraf 
Create a bucket in InfluxDB and put the auth token for Telegraf as INFLUX_TOKEN environment variable