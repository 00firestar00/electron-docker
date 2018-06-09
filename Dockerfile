FROM node:8.11.1

RUN apt-get update
RUN apt-get -y install libgtkextra-dev libgconf2-dev libnss3 libasound2 libxtst-dev libxss1 libx11-xcb-dev libgtk-3-0 libcanberra-gtk* packagekit-gtk3-module 
RUN curl -Ls https://yarnpkg.com/install.sh | bash
RUN mkdir /app
WORKDIR /app
ADD ./package.json /app

RUN yarn install --force
CMD [ "yarn", "start" ]