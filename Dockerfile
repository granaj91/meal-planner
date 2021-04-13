FROM node:15-alpine3.10

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --silent

COPY . .

EXPOSE 8000

CMD ["npm", "run", "server"]