# syntax=docker/dockerfile:1
# Alpine is chosen for its small footprint
# compared to Ubuntu
#Let's go!!!
FROM golang:1.19-alpine

WORKDIR /app

# Download necessary Go modules
COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /docker-gs-ping

CMD [ "/docker-gs-ping" ]

EXPOSE 8880
