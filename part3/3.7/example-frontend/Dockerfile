# use node package so it is smaller
FROM node:16-alpine3.18

# expose port 5000
EXPOSE 5000

#workdir
WORKDIR /usr/src/app

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
