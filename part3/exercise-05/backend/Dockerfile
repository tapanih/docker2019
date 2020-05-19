FROM node:10-alpine

WORKDIR /backend
COPY . .
RUN npm install && chown -hR node:node /backend

CMD ["npm", "start"]

USER node
EXPOSE 8000