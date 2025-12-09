apt update
apt install nginx -y

apt install openjdk-21-jdk -y
echo "export JAVA_HOME='/usr/lib/jvm/java-21-openjdk-amd64/'" >> /etc/profile && source /etc/profile

sed 's/PORT/8040/g' /etc/killercoda/host > /tmp/uihost
sed -i 's|https://||g' /tmp/uihost
sed 's/PORT/8041/g' /etc/killercoda/host > /tmp/apihost
sed -i 's|https://||g' /tmp/apihost
sed 's/PORT/8050/g' /etc/killercoda/host > /tmp/ui2host
sed -i 's|https://||g' /tmp/ui2host
sed 's/PORT/8051/g' /etc/killercoda/host > /tmp/api2host
sed -i 's|https://||g' /tmp/api2host

sed -ie "s|<WSO2_WEB_HOST>|$(sed 's:http:http:g' /tmp/uihost)|g" /root/resources/apim-nginx.conf
sed -ie "s|<WSO2_API_HOST>|$(sed 's:http:http:g' /tmp/apihost)|g" /root/resources/apim-nginx.conf
sed -ie "s|<WSO2_2_WEB_HOST>|$(sed 's:http:http:g' /tmp/ui2host)|g" /root/resources/apim-nginx.conf
sed -ie "s|<WSO2_2_API_HOST>|$(sed 's:http:http:g' /tmp/api2host)|g" /root/resources/apim-nginx.conf

sed -ie "s|<HOST_NAME>|$(sed 's:http:http:g' /tmp/uihost)|g" /root/resources/original-deployment.toml
sed -ie "s|<GW_HOST>|$(sed 's:http:http:g' /tmp/apihost)|g" /root/resources/original-deployment.toml
sed -ie "s|<HOST_NAME>|$(sed 's:http:http:g' /tmp/ui2host)|g" /root/resources/original-deployment-2.toml
sed -ie "s|<GW_HOST>|$(sed 's:http:http:g' /tmp/api2host)|g" /root/resources/original-deployment-2.toml

echo "127.0.0.1 $(sed 's:http:http:g' /tmp/uihost)" >> /etc/hosts
echo "127.0.0.1 $(sed 's:http:http:g' /tmp/ui2host)" >> /etc/hosts

mkdir /etc/nginx/ssl/
cp /root/resources/nginx.key /etc/nginx/ssl/
cp /root/resources/nginx.crt /etc/nginx/ssl/

cp /root/resources/apim-nginx.conf /etc/nginx/conf.d/
cp /root/resources/original-nginx.conf /etc/nginx/nginx.conf

/etc/init.d/nginx restart

wget -O /root/wso2am-4.5.0.zip https://github.com/wso2/product-apim/releases/download/v4.5.0/wso2am-4.5.0.zip?download=true
mkdir /root/dev
unzip /root/wso2am-4.5.0.zip -d /root/dev/
cp /root/resources/original-deployment.toml /root/dev/wso2am-4.5.0/repository/conf/deployment.toml
cp /root/resources/client-truststore.jks /root/dev/wso2am-4.5.0/repository/resources/security/client-truststore.jks.

mkdir /root/prod
unzip /root/wso2am-4.5.0.zip -d /root/prod/
cp /root/resources/original-deployment-2.toml /root/prod/wso2am-4.5.0/repository/conf/deployment.toml
cp /root/resources/client-truststore.jks /root/prod/wso2am-4.5.0/repository/resources/security/client-truststore.jks

echo done > /tmp/background0