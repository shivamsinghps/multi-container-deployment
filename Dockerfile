#base image
FROM node:alpine

#install dependancies
WORKDIR /usr/loginapp
COPY ./package.json ./
RUN npm install
COPY ./ ./

#start-up command
CMD npm start