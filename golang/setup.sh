#!bin/bash
# カレントディレクトリにテンプレートを展開する
ROOT=https://raw.githubusercontent.com/canpok1/vscode-remote-templates/main/golang
DIR=.devcontainer

if [ ! -d ${DIR} ]; then
    mkdir -p ${DIR}
    curl ${ROOT}/${DIR}/devcontainer.json > ${DIR}/devcontainer.json
    curl ${ROOT}/${DIR}/docker-compose.yml > ${DIR}/docker-compose.yml
    curl ${ROOT}/${DIR}/Dockerfile > ${DIR}/Dockerfile
fi    
