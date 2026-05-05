	## Inbox: _topic_

**Date:** *2025-10-28*
**Source:** {{Book / Podcast / Video / Article}}
**Describe**:  __

---
## vmware GDK_SYNCHRONIZE=1 
## setxkbmap us
---
### devOps
```bash
docker stop web

docker rm web # remove the containers
or 
docker rm web web01 testimg affectionate_feynman


docker run -d -p 8080:80 --name web nginx
```
- **docker run -d -P tesimg** 
	- to run a container 
	- -d to *background*
	- -P for *select random port or (-p 8080)*
- *docker images*(command)
	- lists all images locally available
	- remove images
		- **docker rmi _id01_ _id02_ _id03_**
- *docker build -t testfile .* 
	- build the image
	- already  *cd* to the dir and must have a **Dockerfile** in it.
---
### Docker Compose
Docker Compose is a tool for defining and running multi-container Docker applications. It allows you to manage the configuration and execution of multiple related Docker containers as a single, cohesive application
- *docker compose up -d*
- *docker compose down* 
	- stop and clear all containers the compose
- *docker compose ps* 
	- shows all images from the compose
---
- microservices
---
#### cat /sys/class/leds/input
for info of input devices
```bash
input27::capslock/   input27::scrolllock/ input6::capslock/
input27::compose/    input27::sleep/      input6::compose/
input27::kana/       input27::suspend/    input6::kana/
input27::misc/       input3::capslock/    input6::numlock/
input27::mute/       input3::numlock/     input6::scrolllock/
input27::numlock/    input3::scrolllock/

```
---
## ec2 overview
#### dashboard
overall info of ec2 instance  *zone info* etc are mentioned
### Instances 
instances are the **vboxes** so it can be created from 
**instances**
### Images
images are like *vagrant images/boxes* get from website
here AMI
### Groups & Ntw
groups are act like firewall 
**Elastic ip** is providing *public ip* to the *instance*
```bash
ss -tunlp 
# to show port attached to which port's. also mean that open ports
s
```

---
projects

project to track my personal project just ai to make deadlines
frequent asking and quotes , motivation what's the progress 
not everyday but in laptop ask at some times , like notification on laptop