# Docker Swarm Playground

---

# How to run it
 
### Modify your hosts file by path: ```/etc/hosts```

```shell
127.0.0.1 dashboard.traefik.int
```

### Add the labels to your nodes

```shell
docker node update --label-add mysql=yes {node id}
docker node update --label-add redis-cache=yes {node id}
docker node update --label-add redis-queue=yes {node id}
docker node update --label-add influxdb=yes {node id}
docker node update --label-add grafana=yes {node id}
docker node update --label-add kibana=yes {node id}
```

### Next, do the main things:
1. Init the Docker swarm
2. Create internal network: ```make network```
3. Deploy the gateway: ```make gateway```


# Services

| HTTP URL                                              | Service                |
|-------------------------------------------------------|------------------------|
| [dashboard.traefik.int](http://dashboard.traefik.int) | The trafiek dashboard  |
