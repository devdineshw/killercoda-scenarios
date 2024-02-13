apt update
apt install nginx -y

sed 's/PORT/80/g' /etc/killercoda/host > /tmp/uihost
sed -i 's|https://||g' /tmp/uihost
sed 's/PORT/8080/g' /etc/killercoda/host > /tmp/apihost
sed -i 's|https://||g' /tmp/apihost
sed -ie "s|<WSO2_WEB_HOST>|$(sed 's:http:http:g' /tmp/uihost)|g" /root/apim-nginx.conf
sed -ie "s|<WSO2_API_HOST>|$(sed 's:http:http:g' /tmp/apihost)|g" /root/apim-nginx.conf

sed -ie "s|<HOST_NAME>|$(sed 's:http:http:g' /tmp/uihost)|g" /root/original-deployment.toml

openssl genrsa -passout pass:nginx -des3 -out nginx.key 2048
host=$(cat /tmp/uihost)
cm="openssl req -new -key nginx.key -out nginx.csr -passin pass:nginx -passout pass:nginx -subj '/C=US/O=WSO2/OU=CS/CN=*.killercoda.com' -addext 'subjectAltName = DNS:(${host})' -newkey rsa:2048"
eval "$cm"
cp nginx.key nginx.key.org
openssl rsa -in nginx.key.org -passin pass:nginx -out nginx.key
openssl x509 -req -days 365 -in nginx.csr -signkey nginx.key -out nginx.crt
mkdir /etc/nginx/ssl/
cp nginx.key /etc/nginx/ssl/
cp nginx.crt /etc/nginx/ssl/

cp /root/apim-nginx.conf /etc/nginx/conf.d/

cp original-nginx.conf /etc/nginx/nginx.conf

/etc/init.d/nginx restart

echo done > /tmp/background0