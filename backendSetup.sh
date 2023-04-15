#!/bin/bash

cd /home/ubuntu/node-repo/server 

sudo npm i 

sudo pm2 start ecosystem.config.js

sudo npx sequelize db:migrate
