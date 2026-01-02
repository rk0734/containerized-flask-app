#!/bin/bash

case $1 in
  build)
    docker build -t devops-hello .
    ;;
  run)
    docker run -d -p 5000:5000 --name devops-hello devops-hello
    ;;
  stop)
    docker stop devops-hello && docker rm devops-hello
    ;;
  logs)
    docker logs devops-hello
    ;;
  *)
    echo "Usage: ./manage.sh {build|run|stop|logs}"
    ;;
esac
