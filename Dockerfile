FROM node:20-alpine

WORKDIR /app

COPY package/package*.json ./

RUN npm install

COPY package/ .

EXPOSE 3000

CMD ["npm", "start"]
