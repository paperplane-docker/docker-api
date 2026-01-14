# `chiskat/docker-api` [![Build Status](https://drone.paperplane.cc/api/badges/paperplane-docker/docker-api/status.svg)](https://drone.paperplane.cc/paperplane-docker/docker-api)

## 简介

本镜像 [`chiskat/docker-api`](https://hub.docker.com/r/chiskat/docker-api) 可以在已挂载 Docker 的 UNIX Socket 时，提供 TCP 协议的 Docker Engine API。

使用时需要挂载宿主机的 `/var/run/docker.sock` 到容器中的相同路径，此后可通过此容器的 `2375` 端口访问 TCP 协议的 Docker Engine API。

点此访问 [源码](https://git.paperplane.cc/paperplane-docker/docker-api)；点此访问 [Github 源码](https://github.com/paperplane-docker/docker-api)。

## 私有版本

将 `chiskat` 用户名替换为 `docker.p01.cc` 即可使用私有库版本。点此访问 [私有库镜像](https://docker.p01.cc/#!/taglist/docker-api)（需登录）。

私有版本和公开版本目前没有区别。

## 用法

拉取镜像：

```bash
docker pull chiskat/docker-api
```

运行：

```yaml
services:
  docker-api:
    image: chiskat/docker-api:latest
    container_name: docker-api
    ports:
      - '2375:2375'
    volumes:
      - '/var/run/docker.sock:/var/run/docker.sock'
```

随后可以通过 `2375` 端口访问 Docker Engine API。
