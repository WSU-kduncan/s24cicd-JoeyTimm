# Project Overview
- 

#Run Project Locally
- To install Docker locally, all you need to do is go to the docker website in a web browser and install Docker for your OS. Once installed, you can run docker commands in your WSL2 terminal
- To build an image from the dockerfile, you simply can do "docker build -t"  followed by your desired container name and version as well as a . to signify the current repo as such "project4test:v1 ."
- As long as you are in the folder containing the DockerFile, docker will automatically recognize the docker file and build based on that file. That is why the "." is necessary so Docker knows the dockerfile is in the current repo
- To run the container you can then run "docker run -p 80:80 " followed by "containerName: version . "
- With these steps complete, the web content will now be served on your local host at port 80. To view this, you can simply go to your web browser of choice and go to "localhost:80" or "127.0.0.1:80"
 

#Github Actions and DockerHub
