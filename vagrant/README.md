# Vagrant

## Requirements
- [Vagrant](https://www.vagrantup.com/downloads.html)

## Project setup
```sh
    $ mkdir vagrant_getting_started
    $ cd vagrant_getting_started
    $ vagrant init
```
This will create a Vagrantfile template filled with comments and examples

## Boxes
Vagrant uses a base image to quickly clone a virtual machine. These base images are known as "boxes" in Vagrant

### Installing a Box

```sh
    $ vagrant box add generic/ubuntu1804
```
This will download the box named "generic/ubuntu1804" from HashiCorp's Vagrant Cloud box [catalog](https://vagrantcloud.com/boxes/search), a place where you can find and host boxes.

### Using a Box

```sh
    Vagrant.configure("2") do |config|
      config.vm.box = "generic/ubuntu1804"
    end
```

## Up And SSH
```sh
    $ vagrant up
    $ vagrant ssh
```
## Port Forwarding
```sh
    Vagrant.configure("2") do |config|
      ....
      config.vm.network :forwarded_port, guest: 80, host: 8080
      ....
    end
```
http://localhost:8080 will redirect to port80 inside the box

## Try out examples
- Try out Vagrantfile's from jenkins and docker folders


