function dockbuild() {
  docker build -t $1 .
}

function godock() {
  docker run -it --rm --name my-app-tmp-run $1
}

function dockbash() {
  docker run -it --rm --name my-app-tmp-run $1 /bin/bash
}

function docknpm() {
  docker run -it --rm --name my-app-tmp-run -v "$PWD":/usr/src/app -w /usr/src/app node:6 npm "$@"
}

function docknode() {
  docker run -it --rm --name my-app-tmp-run -v "$PWD":/usr/src/app -w /usr/src/app -p "3000:3000" node:6 node "$@"
}

function docknodebash() {
  docker run -it --rm --name my-app-tmp-run -v "$PWD":/usr/src/app -w /usr/src/app -p "3000:3000" node:6 /bin/bash "$@"
}