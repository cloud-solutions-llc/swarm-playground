# Docker Swarm Playground

---

# How to run it
 
### Modify your hosts file by path: ```/etc/hosts```

```shell
127.0.0.1 dashboard.traefik.int
```

### Next, do the main things:
1. Init the Docker swarm
2. Create internal network: ```make network```
3. Deploy the gateway: ```make gateway```


# Services

| HTTP URL                                       | Service                |
|------------------------------------------------|------------------------|
| [dashboard.traefik.int](dashboard.traefik.int) | The trafiek dashboard  |
