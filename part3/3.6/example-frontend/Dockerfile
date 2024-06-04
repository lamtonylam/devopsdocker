# use ubuntu
FROM ubuntu:22.04

# expose port 5000
EXPOSE 5000

#workdir
WORKDIR /usr/src/app

# apt update
RUN apt update -y && apt upgrade -y &&\
    apt install curl -y &&\
    curl -sL https://deb.nodesource.com/setup_16.x | bash && apt install -y nodejs && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/*

# node packages
COPY package*.json ./

# install all packages
RUN npm install

# copy rest of application
COPY . .

# build static files
RUN REACT_APP_BACKEND_URL=http://localhost:8080 npm run build

# serving files
RUN npm install -g serve


# serve
CMD ["serve", "-s", "-l", "5000", "build"]
