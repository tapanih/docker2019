FROM ubuntu:16.04
WORKDIR /backend

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

COPY . .
RUN npm install
CMD ["npm", "start"]

EXPOSE 8000