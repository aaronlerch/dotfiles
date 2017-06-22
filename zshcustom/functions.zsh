function kb() {
  POD_NAME=$(kubectl get pods --selector=app=$1 -o jsonpath='{.items[0].metadata.name}')
  echo "connecting to pod ${POD_NAME}"
  kubectl exec -it ${POD_NAME} -- /bin/bash
}

function markKinesis() {
  STREAM_NAME=${1:-dev.snowplow.good}
  export SHARD_ITERATOR=$(aws kinesis get-shard-iterator --shard-id shardId-000000000000 --shard-iterator-type LATEST --stream-name ${STREAM_NAME} --query 'ShardIterator')
}

function getKinesis() {
  LIMIT=${1:-5}
  aws kinesis get-records --limit ${LIMIT} --shard-iterator ${SHARD_ITERATOR}
}

function dockbuild() {
  docker build -t $1 .
}

function godock() {
  docker run -it --rm --name tmp-docker-app-$[${RANDOM}%1000] "$@"
}

function dockbash() {
  docker run -it --rm --name tmp-docker-app-$[${RANDOM}%1000] $1 /bin/bash
}

function docknpm() {
  docker run -it --rm --name tmp-docker-app-$[${RANDOM}%1000] -v "$PWD":/usr/src/app -w /usr/src/app node:6 npm "$@"
}

function docknode() {
  docker run -it --rm --name tmp-docker-app-$[${RANDOM}%1000] -v "$PWD":/usr/src/app -w /usr/src/app -p "3000:3000" node:6 node "$@"
}

function docknodebash() {
  docker run -it --rm --name tmp-docker-app-$[${RANDOM}%1000] -v "$PWD":/usr/src/app -w /usr/src/app -p "3000:3000" node:6 /bin/bash "$@"
}

function dockpy() {
  docker run -it --rm --name tmp-docker-app-$[${RANDOM}%1000] -v "$PWD":/usr/src/app -w /usr/src/app python:2.7 "$@"
}