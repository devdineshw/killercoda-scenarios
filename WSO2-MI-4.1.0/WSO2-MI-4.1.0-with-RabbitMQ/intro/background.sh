apt update
apt install nginx -y

apt install openjdk-11-jdk -y
echo "export JAVA_HOME='/usr/lib/jvm/java-11-openjdk-amd64/'" >> /etc/profile && source /etc/profile

#apt install maven -y
#wget -O apache-maven-3.5.4-bin.zip https://archive.apache.org/dist/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.zip
#unzip apache-maven-3.5.4-bin.zip
#echo "export PATH='/root/apache-maven-3.5.4/bin:$PATH'" >> /etc/profile && source /etc/profile

#wget -O /root/rabbitmq-server_3.13.2-1_all.deb https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.13.2/rabbitmq-server_3.13.2-1_all.deb
apt install rabbitmq-server -y
rabbitmq-plugins enable rabbitmq_management
rabbitmqctl add_user wso2 wso2
rabbitmqctl set_permissions -p / wso2 ".*" ".*" ".*"
rabbitmqctl set_user_tags wso2 administrator

sed 's/PORT/80/g' /etc/killercoda/host > /tmp/uihost
sed -i 's|https://||g' /tmp/uihost
sed 's/PORT/8080/g' /etc/killercoda/host > /tmp/apihost
sed -i 's|https://||g' /tmp/apihost
sed 's/PORT/8090/g' /etc/killercoda/host > /tmp/healthhost
sed -i 's|https://||g' /tmp/healthhost
sed 's/PORT/9154/g' /etc/killercoda/host > /tmp/mgthost
sed -i 's|https://||g' /tmp/mgthost

sed -ie "s|<WSO2_WEB_HOST>|$(sed 's:http:http:g' /tmp/uihost)|g" /root/resources/mi-nginx.conf
sed -ie "s|<WSO2_API_HOST>|$(sed 's:http:http:g' /tmp/apihost)|g" /root/resources/mi-nginx.conf
sed -ie "s|<WSO2_HEALTH_HOST>|$(sed 's:http:http:g' /tmp/healthhost)|g" /root/resources/mi-nginx.conf
sed -ie "s|<WSO2_MGT_HOST>|$(sed 's:http:http:g' /tmp/mgthost)|g" /root/resources/mi-nginx.conf

sed -ie "s|<HOST_NAME>|$(sed 's:http:http:g' /tmp/uihost)|g" /root/resources/deployment.toml
sed -ie "s|<GW_HOST>|$(sed 's:http:http:g' /tmp/apihost)|g" /root/resources/deployment.toml

echo "127.0.0.1 $(sed 's:http:http:g' /tmp/uihost)" >> /etc/hosts

mkdir /etc/nginx/ssl/
cp /root/resources/nginx.key /etc/nginx/ssl/
cp /root/resources/nginx.crt /etc/nginx/ssl/

cp /root/resources/mi-nginx.conf /etc/nginx/conf.d/
cp /root/resources/nginx.conf /etc/nginx/nginx.conf

/etc/init.d/nginx restart

wget -O /root/wso2mi-4.1.0.zip https://github.com/devdineshw/resources/raw/main/binaries/WSO2/MI/4.1.0/wso2mi-4.1.0.zip?download=true
wget -O /root/wso2mi-dashboard-4.1.0.zip https://github.com/devdineshw/resources/raw/main/binaries/WSO2/MI/4.1.0/wso2mi-dashboard-4.1.0.zip?download=true
mkdir /root/mi1
unzip /root/wso2mi-4.1.0.zip -d /root/mi1/
unzip /root/wso2mi-dashboard-4.1.0.zip -d /root/mi1/
cp /root/resources/deployment.toml /root/mi1/wso2mi-4.1.0/conf/deployment.toml
cp /root/resources/client-truststore.jks /root/mi1/wso2mi-4.1.0/repository/resources/security/client-truststore.jks

echo done > /tmp/background0