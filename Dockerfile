FROM golang:latest

# Create app directory
WORKDIR /go/src/abyss

RUN go get github.com/revel/revel
RUN go get github.com/revel/cmd/revel


# Bundle app source
COPY . .


# run the app
CMD ["/go/bin/revel", "run", "-a", "."]
