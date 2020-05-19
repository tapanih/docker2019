FROM node:10-alpine

WORKDIR /frontend
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

CMD ["npx", "serve", "-s", "-l", "5000", "dist"]

USER node
EXPOSE 5000