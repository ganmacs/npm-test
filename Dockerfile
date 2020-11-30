FROM node:14

RUN mkdir -p /app
COPY package.json package-lock.json /app/

WORKDIR /app
RUN npm install

# Add node_modules/.bin to PATH
ENV PATH /app/node_modules/.bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

COPY . /app
