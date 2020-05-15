FROM ubuntu:16.04
WORKDIR /frontend

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

COPY . .
RUN npm install
RUN npm run build
CMD ["npx", "serve", "-s", "-l", "5000", "dist"]

EXPOSE 5000