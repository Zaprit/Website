FROM golang:latest

# Create app directory
WORKDIR /go/src/abyss

RUN go get github.com/revel/revel
RUN go get github.com/revel/cmd/revel


# Bundle app source
COPY . src

RUN revel build src ./build -m prod
RUN mv build/* .
RUN rm -rf build
RUN rm -rf src

# run the app
CMD ["./run.sh"]
