FROM node:6-onbuild

RUN mkdir -p /docker/hello-world

WORKDIR /docker/hello-world

COPY package.json ./

RUN npm install

COPY app.js ./
COPY views ./views
COPY routes ./routes
COPY public ./public
COPY bin ./bin

EXPOSE 3000

CMD node ./bin/www
