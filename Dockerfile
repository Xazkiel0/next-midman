FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm install -g npm@latest
RUN npm i

COPY . .

EXPOSE 3000

CMD ["npm","run", "dev"]
