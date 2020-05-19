FROM node:10-alpine as build-stage

WORKDIR /frontend
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM node:10-alpine
COPY --from=build-stage /frontend/dist/ /dist
CMD ["npx", "serve", "-s", "-l", "5000", "dist"]

USER node
EXPOSE 5000