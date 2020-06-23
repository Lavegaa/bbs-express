FROM node:12-alpine

# work directory
WORKDIR /usr/app

# Copy dependencies first for effective caching
COPY package*.json /usr/app

RUN npm install
COPY . /usr/app
# COPY . .
RUN cd /usr/app &&\
  ls



CMD ["npm", "start"]