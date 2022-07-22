see: https://github.com/elastic/golang-crossbuild


https://github.com/elastic/golang-crossbuild/releases


支持：  **linux/i386, linux/amd64, windows/386, windows/amd64**

### 例子：

- linux/amd64

```shell
docker run -it --rm \
  -v $PWD/../demo:/tmp/demo \
  -w /tmp/demo \
  -e CGO_ENABLED=1 \
  -e GOPROXY="https://goproxy.cn,direct" \
  beer5215/golang-crossbuild-debian10 \
  --build-cmd "go build" \
  -p "linux/amd64"
```

- windows/amd64

```shell
docker run -it --rm \
  -v $PWD/../demo:/tmp/demo \
  -w /tmp/demo \
  -e CGO_ENABLED=1 \
  -e GOPROXY="https://goproxy.cn,direct" \
  beer5215/golang-crossbuild-debian10 \
  --build-cmd "go build" \
  -p "windows/amd64"
```


