FROM golang:1.15-alpine 

RUN apk add --update nodejs npm make g++ git
RUN npm install -g less less-plugin-clean-css

RUN mkdir /app
COPY ./writefreely /app

RUN chmod +x /app/writefreely

ENV GO111MODULE=on

WORKDIR /app

ENTRYPOINT ["./writefreely"]
