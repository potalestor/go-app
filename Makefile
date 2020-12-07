# GO Commands
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get

# Others
LINTER=golangci-lint

# Application
APPNAME=go-app
APPPATH = ./cmd/$(APPNAME)
APPMAIN = main.go

all: test build

test:
	@echo "Run tests $(APPNAME)"
	$(GOTEST) ./... -v

build:
	@echo "Build application $(APPNAME)"
	$(GOBUILD) -o $(APPPATH)/$(APPNAME) -v $(APPPATH)/$(APPMAIN)

lint:
	@echo "Run linter  $(LINTER)"
	$(LINTER) run