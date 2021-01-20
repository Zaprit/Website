FROM go:latest

# Create app directory
WORKDIR /app

RUN go get github.com/revel/revel
RUN go get github.com/revel/cmd/revel


# Bundle app source
COPY . .
RUN echo ls
RUN go get -d
RUN revel package -a .


# run the app
CMD ["./run.sh"]
