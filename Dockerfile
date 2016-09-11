# Docker container with metasploit.
#
# Use Kali Linux base image (2.0)
FROM linuxkonsult/kali
MAINTAINER thinkhy "think.hy@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

# add aliyun source to speed up installation
RUN echo "deb http://mirrors.aliyun.com/kali sana main non-free contrib" > /etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/kali-security/ sana/updates main contrib non-free" >> /etc/apt/sources.list && echo "deb-src http://mirrors.aliyun.com/kali-security/ sana/updates main contrib non-free" >> /etc/apt/sources.list

# Update apt source and install metasploit
RUN apt-get -y update&&apt-get -y upgrade&&apt-get -y dist-upgrade&&apt-get -y --force-yes install ruby metasploit-framework ssh&&apt-get clean

# assign a password for root suer
RUN printf "K@li2016\nK@li2016" | passwd
# permit root login via ssh
RUN sed -i -e 's/^PermitRootLogin.*$/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22

# start sshd and enter BASH
ENTRYPOINT service ssh start && bash
