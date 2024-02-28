apt update
apt install nginx -y

apt install openjdk-11-jdk -y
echo "export JAVA_HOME='/usr/lib/jvm/java-11-openjdk-amd64/'" >> /etc/profile && source /etc/profile

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

wget -O /root/wso2am-4.2.0.zip https://github.com/devdineshw/resources/raw/main/binaries/WSO2/APIM/4.2.0/wso2am-4.2.0.zip?download=true
mkdir /root/apim1
unzip /root/wso2am-4.2.0.zip -d /root/apim1/
cp /root/resources/original-deployment.toml /root/apim1/wso2am-4.2.0/repository/conf/deployment.toml
cp /root/resources/client-truststore.jks /root/apim1/wso2am-4.2.0/repository/resources/security/client-truststore.jks

echo done > /tmp/background0