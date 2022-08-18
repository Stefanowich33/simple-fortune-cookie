FROM golang:1.19-alpine

WORKDIR /app

COPY go.mod ./
RUN go mod verify

EXPOSE 8080

COPY . .

RUN go build -v -o /usr/local/bin/frontend .

ENTRYPOINT ["frontend"]