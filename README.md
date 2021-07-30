# Node Docker

## 範例目的
此範例說明如何在 Dockerfile 裡面安裝 Docker 與 Node.js 之後使用 Node.js 呼叫 Docker 指令

## 如何執行
1. `docker build -t node-docker .`
2. `docker run --rm -v /var/run/docker.sock:/var/run/docker.sock node-docker`
