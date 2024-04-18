# Semantic Versioning

# Deployment
## How to install Docker on your instance.
- This guide is a summary of the guide provided by docker themselves:
- First you want to uninstall potential conflicting packages by running the following command
'''
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
'''
- Next you need should do a quick "sudo apt-get update"
- After this you need to download Docker's official GPG key. Use the following commands in order:
- sudo apt-get install ca-certificates curl
- sudo install -m 0755 -d /etc/apt/keyrings
- sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
- sudo chmod a+r /etc/apt/keyrings/docker.asc
- Now you need to add the repo to apt sources with the following commands:
''' 
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
'''
- Then use: sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 
- And end off with a suo apt-get update. 
- Now your instance has the required pre installations for docker. 
- Finally to actually install docker itself use the following command:
- sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
- And to verify docker is working you can run a quick sudo docker run hello-world

## Container Restart Script
