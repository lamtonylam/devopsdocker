# go lang
FROM golang:alpine3.20 as build-stage

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


# empty from
FROM scratch

# work dir
WORKDIR /usr/src/app

# copy built binary to our new volume
COPY --from=build-stage /usr/src/app/ /usr/src/app/

#execute project
CMD ["./server"]
