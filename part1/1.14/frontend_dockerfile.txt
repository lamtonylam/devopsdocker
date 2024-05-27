# use ubuntu
FROM ubuntu:22.04

# expose port 5000
EXPOSE 5000

#workdir
WORKDIR /usr/src/app

# apt update
RUN apt update && apt upgrade

# curl
RUN apt install curl -y

# install node
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash && apt install -y nodejs

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

# finalyl serve
CMD ["serve", "-s", "-l", "5000", "build"]
