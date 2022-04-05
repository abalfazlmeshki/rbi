#!/bin/bash

#generating certificate using certbot
certbot certonly --standalone -d www.meshki.me -m abolfazlmeshki@gmail.com --agree-tos --no-eff-email

#copy the certificate and the key for NGINX
cp -f /etc/letsencrypt/live/www1.meshki.me/fullchain.pem /etc/nginx/ssl
cp -f /etc/letsencrypt/live/www1.meshki.me/privkey.pem /etc/nginx/ssl
#rm -f /etc/letsencrypt/live/www1.meshki.me/fullchain.pem
#rm -f /etc/letsencrypt/live/www1.meshki.me/privkey.pem

# start the NGINX
nginx -g "daemon off;"
