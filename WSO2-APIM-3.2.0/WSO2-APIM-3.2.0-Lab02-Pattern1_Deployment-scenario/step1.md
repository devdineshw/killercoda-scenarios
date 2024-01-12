1) Install dependencies 
1.1) Update the ubuntu package index before installing

`apt update`{{execute}}

1.2) Install JDK 8

`apt install openjdk-8-jdk -y`{{execute}}

1.3) Create environment variable

`echo "export JAVA_HOME='/usr/lib/jvm/java-8-openjdk-amd64/jre/'" >> /etc/profile && source /etc/profile`{{execute}}

1.4) Install Nginx

`apt install nginx -y`{{execute}}

1.5) Test the nginx setup by accessing the URL. You should see the nginx home page

[TRY]({{TRAFFIC_HOST1_80}})

2) Configure the SSL for nginx

2.1) Create a key file for the server

`openssl genrsa -passout pass:nginx -des3 -out nginx.key 2048`{{execute}}

2.2) Create the Sign Request (CSR)

`openssl req -new -key nginx.key -out nginx.csr -passin pass:nginx -passout pass:nginx -subj "/C=US/O=WSO2/OU=CS/CN=*.killercoda.com" -addext "subjectAltName = DNS:({{TRAFFIC_HOST1_80}})" -newkey rsa:2048`{{execute}}

2.3) Remove the password from the key file

`cp nginx.key nginx.key.org`{{execute}}

`openssl rsa -in nginx.key.org -passin pass:nginx -out nginx.key`{{execute}}

2.4) Sign the certificate

`openssl x509 -req -days 365 -in nginx.csr -signkey nginx.key -out nginx.crt`{{execute}}

2.5) Create a directory to store the key files and copy

`mkdir /etc/nginx/ssl/`{{execute}}

`cp nginx.key /etc/nginx/ssl/`{{execute}}

`cp nginx.crt /etc/nginx/ssl/`{{execute}}


Go to the next section to configure the services
