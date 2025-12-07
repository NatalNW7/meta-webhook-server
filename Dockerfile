FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install -g npm@11.6.4 && \
    npm install --no-audit --no-fund

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]