FROM node:16
 
WORKDIR /usr/src/app
 
COPY package*.json ./
 
RUN npm install
 
COPY . .
 
EXPOSE 3000
 
CMD [ "npm", "start" ]




FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD="root"

ENV MYSQL_DATABASE="server"
ENV MYSQL_USER="root"
ENV MYSQL_PASSWORD=""

ENV MYSQL_CHARSET=utf8mb4
ENV MYSQL_COLLATION=utf8mb4_unicode_ci

