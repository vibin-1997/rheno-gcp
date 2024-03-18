FROM node:20.11.1

# Installing libvips-dev for sharp Compatability
RUN apt-get update && apt-get install libvips-dev -y

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

WORKDIR /opt/

COPY ./package.json ./package-lock.json ./

RUN npm config set fetch-retry-maxtimeout 600000 && npm install

WORKDIR /opt/app
COPY ./ .

RUN npm run build

EXPOSE ${PORT}

CMD ["npm", "start"]
