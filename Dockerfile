# get image
FROM node:latest

# create work directory 
WORKDIR /app 

# dependencies 

COPY package*.json .
RUN npm i

# copy all files
COPY . .

EXPOSE 3000






