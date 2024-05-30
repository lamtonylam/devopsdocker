# go lang
FROM golang:1.16

#expose port
EXPOSE 8080

# work dir
WORKDIR /usr/src/app

# cors check env
ENV REQUEST_ORIGIN=http://localhost:5000

# copy everything
COPY . .

# build project
RUN go build

#execute project
CMD ["./server"]