FROM golang:latest

# Create app directory
WORKDIR /go/src/abyss

RUN go get github.com/revel/revel
RUN go get github.com/revel/cmd/revel


# Bundle app source
COPY . source

RUN revel build source tmp -m prod
RUN rm -rf source
RUN mv tmp/* .
RUN rm -rf tmp

# run the app
CMD ["./run.sh"]
