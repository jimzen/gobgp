TOOLS_DESTDIR ?= $(GOPATH)/bin

INCLUDE = -I=. -I=$(GOPATH)/src -I=$(GOROOT)/src
LD_FLAGS =

build:
	GO111MODULE=on go build -v -o bin/gobgp ./cmd/gobgp/.
	GO111MODULE=on go build -v -o bin/gobgpd ./cmd/gobgpd/.

