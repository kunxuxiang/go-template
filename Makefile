## This is a self-documented Makefile. For usage information, run `make help`:
##
## For more information, refer to https://suva.sh/posts/well-documented-makefiles/

GO := go
GO_FILES ?= ./pkg/...
GO_APP_NAME := hello
GO_APP_VERSION := 0.0.0
GO_BUILD_DIR := ./build

all: build

build:
	$(GO) build -o $(GO_BUILD_DIR)/$(GO_APP_NAME)

run:
	$(GO) run cmd/app/main.go

test:
	$(GO) test $(GO_FILES)

clean:
	rm -rf $(GO_BUILD_DIR)

help:
	@echo "Available targets:"
	@echo "  make         Build the project"
	@echo "  make build   Build the project"
	@echo "  make test    Run tests"
	@echo "  make clean   Clean generated files"
	@echo "  make run     Run the project"
	@echo "  make help    Display this help message"

.PHONY: all build run test clean help
