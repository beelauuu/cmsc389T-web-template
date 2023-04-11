FROM node:10-alpine
RUN mkdir -p /app/node_modules && chown -R node:node /app
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node", "app.js"]
