# Graylog

## Requirements
- [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [Docker](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/), [Docker compose](https://github.com/docker/compose/releases) installed

## Workshop
- Start Vagrant
```sh
    $ vagrant up
```
- Login to graylog using username/password admin
- Walkthrough UI and nginx dashboard
- Add udp input
- Start docker coins
```sh
    $ docker-compose up -d
```
- Check new logs received