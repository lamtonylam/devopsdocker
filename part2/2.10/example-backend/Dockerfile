# go lang
FROM golang:1.16

#expose port
EXPOSE 8080

# work dir
WORKDIR /usr/src/app

# cors check env
ENV REQUEST_ORIGIN=http://localhost:5000

# 2.9 also added localhost that accept CORS from localhost
# after that all buttons started working.
ENV REQUEST_ORIGIN=http://localhost

# copy everything
COPY . .

# build project
RUN go build

#execute project
CMD ["./server"]
