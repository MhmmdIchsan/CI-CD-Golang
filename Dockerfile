FROM golang:1.23.1-alpine

WORKDIR /app

COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /ci-cd-golang

EXPOSE 3000

CMD [ "/ci-cd-golang" ]