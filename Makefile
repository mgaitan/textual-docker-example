build: build-alpine build-official

build-alpine: 
	docker build -t textual:alpine --build-arg base="python:3.10-alpine" .

build-official: 
	docker build -t textual:official --build-arg base="python:3.10" .

build-fastapi:
	docker build -t textual:fastapi --build-arg base="tiangolo/uvicorn-gunicorn-fastapi:python3.8" .

run-alpine: build-alpine
	docker run -it -e COLORTERM=truecolor textual:alpine 

run-official: build-official
	docker run -it -e COLORTERM=truecolor textual:official 

run-fastapi: build-fastapi
	docker run -it -e COLORTERM=truecolor textual:fastapi 

run-fastapi-standard: build-fastapi
	docker run -it textual:fastapi 