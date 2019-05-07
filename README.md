# users-friends-node-app
API Server &amp; a SPA that could be used for a social media website. This includes modelling users and a “friend” relationship between users.

## Migrate My Sql Database

Simply import `node_rest.sql` file to your databse admin panel (i used phpmyadmin). it include all schemas and data to get started with it.

Simple User Service with raw query to fetch data from mysql server with express routing library. used scalable struture diretories for clean code.

## REST Api Testing

Simply run the app with `node server.js` or with `nodemon` on root dir and download ![REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client) Extension for `VS Code` and use `test.rest` file for checking API responses.