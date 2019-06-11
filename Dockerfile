#FROM centos:centos6
FROM circleci/node:latest

MAINTAINER magedelmalah@hotmail.com


# Enable EPEL for Node.js
#RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

# Install Node...
#RUN yum install -y npm
RUN sudo npm install -g npm@latest

RUN mkdir ~/src

# Copy app to /src
COPY . ~/src

# Install app and dependencies into /src
RUN cd ~/src; npm install


EXPOSE 8080

CMD cd ~/src && node ./app.js