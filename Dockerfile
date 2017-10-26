FROM golang:1.9.2

MAINTAINER Martin Purmann <tinu.public@generalmail.com>

RUN go get github.com/nsf/gocode \
  && go get github.com/derekparker/delve/cmd/dlv \
  && go get github.com/rogpeppe/godef \
  && go get golang.org/x/tools/cmd/godex \
  && go get golang.org/x/tools/cmd/eg \
  && go get github.com/zmb3/gogetdoc \
  && go get golang.org/x/tools/cmd/goimports \
  && go get github.com/golang/lint/golint \
  && go get github.com/alecthomas/gometalinter \
  && go get golang.org/x/tools/cmd/gomvpkg \
  && go get golang.org/x/tools/cmd/guru \
  && go get golang.org/x/tools/cmd/gorename \
  && go get github.com/jstemmer/gotags \
  && go get golang.org/x/tools/cmd/gotype \
  && rm -rf ${GOPATH}/pkg/* ${GOPATH}/src/* \
  && chmod 0777 ${GOPATH}/pkg
