FROM golang:latest

WORKDIR /opt/travel-blog-admin-panel

COPY ./app /opt/travel-blog-admin-panel

RUN go build -o /app/build/app ./cmd/app/main.go
CMD /app/build/app
