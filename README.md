## Full stack image for developing rails

This image contains:
* Ubuntu 16.04
* Ruby 2.0.0, 2.1.9, 2.2.5 and 2.3.1; JRuby 9.1.2.0
    * RVM is used to manage Ruby versions.
    * 2.3.1 is configured as the default.
* Mysql 5.7
* Nginx 1.10
* Phusion Passenger 5
* Node.js 4.2


### Adding your web app to the image

The best way to configure Nginx is by editing `webapp.conf` files

### Add host

#### Getting a docker container's ip address from the host

```
docker inspect --format '{{ .NetworkSettings.IPAddress }}' {rails_container_name}
```

#### Edit `/etc/host`

```
{rails_container_ip} webapp.local
```

### Command

#### Run new container

* Ubuntu OS

```
docker run --name {rails_container_name} \
       -v {path_to_project}:/home/app framgia/rails
```

* Mac OS

```
docker run --name {rails_container_name} \
       -p 80 --rm \
       -v {path_to_project}:/home/app framgia/rails
```

#### Start stopped container

```
docker start -i {rails_container_name}
```

#### Run a command in a running container

```
docker exec -i -t {rails_container_name} /bin/bash
```