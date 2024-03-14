apt update
apt install nginx -y

sed 's/PORT/80/g' /etc/killercoda/host > /tmp/uihost
sed -i 's|https://||g' /tmp/uihost
sed 's/PORT/8080/g' /etc/killercoda/host > /tmp/apihost
sed -i 's|https://||g' /tmp/apihost
sed -ie "s|<WSO2_WEB_HOST>|$(sed 's:http:http:g' /tmp/uihost)|g" /root/resources/apim-nginx.conf
sed -ie "s|<WSO2_API_HOST>|$(sed 's:http:http:g' /tmp/apihost)|g" /root/resources/apim-nginx.conf

sed -ie "s|<HOST_NAME>|$(sed 's:http:http:g' /tmp/uihost)|g" /root/resources/original-deployment.toml
sed -ie "s|<GW_HOST>|$(sed 's:http:http:g' /tmp/apihost)|g" /root/resources/original-deployment.toml

echo "127.0.0.1 $(sed 's:http:http:g' /tmp/uihost)" >> /etc/hosts

mkdir /etc/nginx/ssl/
cp /root/resources/nginx.key /etc/nginx/ssl/
cp /root/resources/nginx.crt /etc/nginx/ssl/

cp /root/resources/apim-nginx.conf /etc/nginx/conf.d/

cp /root/resources/original-nginx.conf /etc/nginx/nginx.conf

/etc/init.d/nginx restart

echo done > /tmp/background0