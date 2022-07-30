FROM golang:latest

WORKDIR /opt/travel-blog-admin-panel

CMD go build -o app/build/app ./cmd/app/main.go
CMD ./app/build/app
