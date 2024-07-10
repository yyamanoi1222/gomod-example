.PHONY: run-220, run-221

run-16-12-ng:
	docker run -e GO111MODULE=on -it -v ./12:/app -w /app golang:1.16.0-alpine go build .

run-19-20-ok:
	docker run -e GO111MODULE=on -it -v ./20:/app -w /app golang:1.19.12-alpine go build .

run-19-20-ng:
	docker run -it -v ./20_ng:/app -w /app golang:1.19.12-alpine go build .

run-20:
	docker run -it -v ./20:/app -w /app golang:1.20.14-alpine go build .

run-20-12-ng:
	docker run -it -v ./12:/app -w /app golang:1.20.14-alpine go build .

run-21:
	docker run -it -v ./21:/app -w /app golang:1.21.12-alpine go build .
run-22-21:
	docker run -it -v ./22:/app -w /app golang:1.21.12-alpine go build .
