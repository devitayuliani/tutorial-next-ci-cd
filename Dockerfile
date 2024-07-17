#a stage 1 : build from official docker hub node.js images
FROM node:lts-alpine as build

#set the working directory
WORKDIR /app

#Copy the package.json and package-lock.json
COPY package*.json ./

#Install the dependencies
RUN npm install

#Copy the rest of the aplication
COPY . .  

#Start App
EXPOSE 3000
CMD [ "npm", "run", "dev" ]