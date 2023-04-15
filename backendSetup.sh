#!/bin/bash

cd /home/ubuntu/node-repo/server 

sudo npm i 

npm i nodemon --save

sudo pm2 start ecosystem.config.js

sudo npx sequelize db:migrate
