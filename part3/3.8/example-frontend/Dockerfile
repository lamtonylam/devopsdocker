# use node package so it is smaller
FROM node:16-alpine3.18 as build-stage

#workdir
WORKDIR /usr/src/app

# node packages
COPY package*.json ./

# install all packages
RUN npm install

# copy rest of application
COPY . .

# build static files
ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN npm run build




# serving stage
FROM node:16-alpine3.18 as serve

# expose port 5000
EXPOSE 5000

#workdir
WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

# serving files
RUN npm install -g serve



# serve
CMD ["serve", "-s", "-l", "5000", "build"]