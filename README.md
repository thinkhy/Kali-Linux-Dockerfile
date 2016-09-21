# Kali-Linux-Dockerfile
Customized image based on Kali Linux 2.0, which can be started simply and quickly to run a Docker container as a sandbox for web security exploitation.

Customized Features
=====================
   1. Add Aliyun source list to speed up installastion in China
   2. Start sshd service by default
   3. SSH to container as root user remotely
    
Usage
====================
   * Build image
    - Issue `sudo docker build .`
   * Start container
    - Issue `sudo docker run -d -p HOST_PORT:22 IMAGE_ID` , for exmaple: `docker run -d -p 7022:22 864b91e5e2f9`
   * Connect to container remotely if you play with Docker in a PaaS platform
    - Issue `ssh root@IP -p HOST_PORT` then input default password K@li2016 (remember to change your password after first login)
       
    

