# use official nginx image as base
FROM nginx:alpine


#copy all files to nginxs public HTML folder
COPY . /usr/share/nginx/html

