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


# create the appuser
RUN adduser appuser

# change the owner of current dir to appuser
RUN chown appuser .

# now we can change the user
USER appuser

#execute project
CMD ["./server"]
