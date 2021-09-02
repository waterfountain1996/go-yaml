.PHONY: test
test:
	go test -v -race ./...

.PHONY: cover
cover:
	go test -coverprofile=cover.out ./...

.PHONY: cover-html
cover-html: cover
	go tool cover -html=cover.out