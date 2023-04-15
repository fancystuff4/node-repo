#!/bin/bash

cd /home/ubuntu/node-repo/server 

sudo npm i 

sudo npm i nodemon --save

sudo pm2 start 0

sudo npx sequelize db:migrate
