FROM circleci/node:latest


MAINTAINER magedelmalah@hotmail.com

# Copy app to /src
COPY . /src

# Install app and dependencies into /src
RUN cd /src; npm install

EXPOSE 8080

CMD cd /src && node ./app.js