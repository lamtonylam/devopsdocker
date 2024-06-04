FROM docker:26.1.3-alpine3.20

WORKDIR /mydir

COPY . .

RUN chmod +x ./builder.sh

ENTRYPOINT [ "./builder.sh" ]