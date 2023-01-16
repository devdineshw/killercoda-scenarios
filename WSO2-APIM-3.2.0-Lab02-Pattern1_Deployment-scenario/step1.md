1) Install the nginx

`apt update`{{execute}}

`apt install nginx -y`{{execute}}


Test the nginx setup by accessing the URL. You should see the nginx home page

[TRY]({{TRAFFIC_HOST1_80}})

2) Configure the SSL for nginx

Create a key file for the server

`openssl genrsa -passout pass:nginx -des3 -out nginx.key 2048`{{execute}}

Create the Sign Request (CSR)

`openssl req -new -key nginx.key -out nginx.csr -passin pass:nginx -passout pass:nginx -subj "/C=US/O=WSO2/OU=CS/CN=*.killercoda.com" -addext "subjectAltName = DNS:({{TRAFFIC_HOST1_80}})" -newkey rsa:2048`{{execute}}

Remove the password from the key file

`cp nginx.key nginx.key.org`{{execute}}

`openssl rsa -in nginx.key.org -passin pass:nginx -out nginx.key`{{execute}}

Sign the certificate

`openssl x509 -req -days 365 -in nginx.csr -signkey nginx.key -out nginx.crt`{{execute}}

Create a directory to store the key files and copy

`mkdir /etc/nginx/ssl/`{{execute}}

`cp nginx.key /etc/nginx/ssl/`{{execute}}

`cp nginx.crt /etc/nginx/ssl/`{{execute}}


Go to the next section to configure the services
