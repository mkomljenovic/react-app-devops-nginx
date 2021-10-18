# get image
FROM node:latest as builder

# create work directory 
WORKDIR /app 

# copy all files
COPY . .

# install node modules and build assets
RUN npm i && npm run build

EXPOSE 3000

# nginx state for serving content
FROM nginx

# set the conf to workdir
WORKDIR /usr/share/nginx/html

# copy static assets from builder stage
COPY --from=builder /app/build .

# containers run nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]