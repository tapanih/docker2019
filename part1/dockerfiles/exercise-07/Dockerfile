FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl
RUN echo "echo 'Input website:'; read website; echo 'Searching..'; sleep 1; curl http://\$website;" > start.sh
CMD ["/bin/bash", "./start.sh"]