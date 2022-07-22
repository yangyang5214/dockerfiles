docker run -it --rm \
  -v $PWD/../demo:/tmp/demo \
  -w /tmp/demo \
  -e CGO_ENABLED=1 \
  -e GOPROXY="https://goproxy.cn,direct" \
  beer5215/golang-crossbuild-arm \
  --build-cmd "go build" \
  -p "linux/arm64"