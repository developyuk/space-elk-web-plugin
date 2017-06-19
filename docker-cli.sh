#!/bin/bash
# set -x

ORG="deye"
NAME="space-elk-web-plugin"
IMAGE="$ORG/$NAME"
CONTAINER="${ORG}_${NAME}"

function logs {
  docker logs --timestamps --follow "$CONTAINER"
}

while (( "$#" )); do
  case "$1" in
    "build")
      docker build \
        --rm=true \
        --tag="$IMAGE" .
      ;;
    "up")
      docker run \
        --detach \
        --name="$CONTAINER" \
        --volume=$(pwd)/src:/project/src:rw \
        --volume=$(pwd)/dist:/project/dist:rw \
        --workdir=/project/src \
        "$IMAGE" \
        sh -c "npm run dev"
      ;;
    "login")
      docker exec -it $(docker ps | grep "$CONTAINER" | awk '{print $1}') bash
      ;;
    "exec")
      shift
      docker exec -it $(docker ps --all | grep "$CONTAINER" | awk '{print $1}') $1
      ;;
    "down")
      docker rm --force "$CONTAINER"
      ;;
    "logs")
      logs
      ;;
    "clean-all")
      docker rm -fv $(docker ps -qa -f status=exited -f status=restarting -f status=created)
      docker rmi $(docker images -qf dangling=true)
      ;;
    *)
      echo "You have failed to specify what to do correctly."
      exit 1
      ;;
  esac

  shift
done
