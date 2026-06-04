FROM node:20-alpine

WORKDIR /app

# copy dependency files first (better caching)
COPY package/package.json package/package-lock.json* ./

RUN npm install

# copy full source
COPY package/ ./

EXPOSE 3000

CMD ["npm", "start"]
