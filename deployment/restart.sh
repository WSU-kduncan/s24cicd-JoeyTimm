#! /bin/bash

#kill old container process
docker stop sillyapp
docker remove sillyapp

#pull new image
docker pull joeytimm/ceg3120-project4:latest

#run this new image
docker run -d -p 80:5000 --name sillyapp --restart always joeytimm/ceg3120-project4:latest
