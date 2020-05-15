# Part 1

## Exercise 1.1

```
$ docker ps -a
CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS                      PORTS               NAMES
875a7671f41e        nginx               "nginx -g 'daemon of…"   48 seconds ago       Exited (0) 13 seconds ago                       youthful_ptolemy
7163dbbcfee6        nginx               "nginx -g 'daemon of…"   50 seconds ago       Exited (0) 13 seconds ago                       busy_shannon
970a3f496838        nginx               "nginx -g 'daemon of…"   About a minute ago   Up About a minute           80/tcp              compassionate_mestorf
```

## Exercise 1.2

```
$ docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
```

## Exercise 1.3

```
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```

## Exercise 1.4

```
$ docker exec -it logger bash
root@09c1c90a4f2f:/usr/app# tail -f ./logs.txt
Fri, 15 May 2020 15:48:26 GMT
Fri, 15 May 2020 15:48:29 GMT
Secret message is:
"Docker is easy"
Fri, 15 May 2020 15:48:35 GMT
Fri, 15 May 2020 15:48:38 GMT
Fri, 15 May 2020 15:48:41 GMT
Fri, 15 May 2020 15:48:44 GMT
Secret message is:
"Docker is easy"
Fri, 15 May 2020 15:48:50 GMT
Fri, 15 May 2020 15:48:53 GMT
^C
root@09c1c90a4f2f:/usr/app# exit
exit
```

## Exercise 1.5

Initial command:

```
docker run --rm -it --name onefive ubuntu:16.04 sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
Input website:
helsinki.fi
Searching..
sh: 1: curl: not found
```

Solution:

```
docker run --rm -it --name onefive ubuntu:16.04 sh -c 'apt-get update && apt-get install -y curl; echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
```

## Exercise 1.6

[Dockerfile](dockerfiles/exercise-06/Dockerfile)
```Dockerfile
FROM devopsdockeruh/overwrite_cmd_exercise
CMD ["-c"]
```
Commands:
```
docker build -t docker-clock .
docker run -it docker-clock
```

## Exercise 1.7

[Dockerfile](dockerfiles/exercise-07/Dockerfile)

```Dockerfile
FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl
RUN echo "echo 'Input website:'; read website; echo 'Searching..'; sleep 1; curl http://\$website;" > start.sh
CMD ["/bin/bash", "./start.sh"]
```
Commands:
```
$ docker run -it curler
Input website:
helsinki.fi
Searching..
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
</body></html>
```

## Exercise 1.8

After creating an empty file locally, I ran the command:
```
docker run -v $(pwd)/part1/output/exercise-08/logs.txt:/usr/app/logs.txt devopsdockeruh/first_volume_exercise
```

## Exercise 1.9

```
docker run --rm -p 80:80 devopsdockeruh/ports_exercise
```

## Exercise 1.10

[Dockerfile](dockerfiles/exercise-10/Dockerfile)
```Dockerfile
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
```