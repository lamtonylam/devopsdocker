# go lang
FROM golang:1.16-alpine3.15



#expose port
EXPOSE 8080

# work dir
WORKDIR /usr/src/app

# cors check env
ENV REQUEST_ORIGIN=http://localhost:5000

# copy everything
COPY . .

# build project
RUN go build && go clean -cache && go clean -modcache


#execute project
CMD ["./server"]
