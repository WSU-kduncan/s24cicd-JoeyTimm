# Semantic Versioning
## Project Overview
- There are two primary objectives for this lab. The first utilizes docker and github on your AWS instance. The goal is that you use semantic versioning with your repository so that when you push to your github repo, a workflow will see the version, create tags for it on docker, then build, push, and tag an image of your github repo to docker.
- The second objective is to then

## How to Generate a tag in git
- To generate a tag in git you can simply use the command "git tag -a vX.Y.Z -m "message" where X.Y.Z is your desired version number, and message is whatever you want to annotate your tag with.
- To get this tag to show up in github you will also need to use "git push origin vX.Y.Z", once again where X.Y.Z is your version

## Behavior of Github workflow
- For this project, I decided to make a second workflow instead of just adding onto the original. The new workflow looks more complicated, but is quite simple. Essentially, whenever a pull request is made or a push to the main branch of the github repository, the workflow will make identical tags to those pushed to github but on dockerhub, and then log into dockerhub and build, push, and tag an image of what was pushed to the github repo.

## Docker Hub Repo:
- https://hub.docker.com/repository/docker/joeytimm/ceg3120-project4/general


# Deployment
## How to install Docker on your instance.
- This guide is a summary of the guide provided by docker themselves:
- First you want to uninstall potential conflicting packages by running the following command
```
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
```
- Next you need should do a quick "sudo apt-get update"
- After this you need to download Docker's official GPG key. Use the following commands in order:
- sudo apt-get install ca-certificates curl
- sudo install -m 0755 -d /etc/apt/keyrings
- sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
- sudo chmod a+r /etc/apt/keyrings/docker.asc
- Now you need to add the repo to apt sources with the following commands:
``` 
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
```
- Then use: sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 
- And end off with a suo apt-get update. 
- Now your instance has the required pre installations for docker. 
- Finally to actually install docker itself use the following command:
- sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
- And to verify docker is working you can run a quick sudo docker run hello-world

## Container Restart Script

## How to install adnanh's webhook
- To install adnanh's webhook it is as easy as "sudo apt-get install webhook"

## Webhook task definition file

## How to start Webhook

## Auto-start webhook service on system boot

## How to configure Github or Dockerhub to message the listener
