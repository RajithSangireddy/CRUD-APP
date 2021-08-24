FROM node:latest
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
Expose 8080
ENTRYPOINT ["node", "app.js"]
