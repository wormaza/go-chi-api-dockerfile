FROM golang:1.12.8-alpine3.10
LABEL maintainer="wormaza"
LABEL version="1.0"
LABEL project="go-api-chi-swagger"
LABEL description="Imagen Docker para pruebas Go"
RUN apk add --no-cache git  
RUN go get -u github.com/go-chi/chi
RUN go get -u github.com/swaggo/swag/cmd/swag
RUN go get -u github.com/swaggo/http-swagger
RUN go get -u github.com/alecthomas/template
RUN go get -u github.com/go-chi/cors
RUN apk add ca-certificates
RUN apk --no-cache add ca-certificates