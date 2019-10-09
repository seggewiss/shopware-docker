server {
    listen 80;

    server_name ${PROXY_DOMAIN}.localhost;

    location / {
        chunked_transfer_encoding on;
        proxy_set_header X-NginX-Proxy true;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";
        proxy_http_version 1.1;
        proxy_redirect off;
        proxy_buffering off;
        proxy_pass http://${PROXY_HOST}:${PROXY_PORT};
    }
}