# get java 8
FROM amazoncorretto:8

# expose 8080 port
EXPOSE 8080

# workdir
WORKDIR /usr/src/app

# copy all of the source code
COPY . .

# build project
RUN  ./mvnw package

# run project
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
