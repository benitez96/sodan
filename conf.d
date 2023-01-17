server {
    listen 80;

    location / {
        proxy_pass http://client:3000;
    }

    location /api/ {
        proxy_pass http://server:8000;
    }
}

server {
    listen 443 ssl;

    ssl_certificate /etc/ssl/certs/sodan.crt;
    ssl_certificate_key /etc/ssl/private/sodan.key;

    location / {
        proxy_pass http://client:3000;
    }

    location /api/ {
        proxy_pass http://server:8000;
    }
}
