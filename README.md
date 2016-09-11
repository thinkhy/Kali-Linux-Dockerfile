# Kali-Linux-Dockerfile
Customized image based on Kali Linux 2.0, which can be started simply and quickly to run a Docker container as a sandbox for web security exploitation.

Customized Features
=====================
    1. Add Aliyun source list to speed up installastion 
    2. Start sshd service by default
    3. SSH to container via root user remotely
    
Usage
====================
    * Build image
      - sudo docker build .
    * Start container
      - sudo docker run -it -p PORT:22 IMAGE_ID, for exmaple: `docker run -it -p 7022:22 864b91e5e2f9`
    

