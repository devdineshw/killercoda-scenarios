apt update
apt install nginx -y

apt install openjdk-11-jdk -y
echo "export JAVA_HOME='/usr/lib/jvm/java-11-openjdk-amd64/'" >> /etc/profile && source /etc/profile

sed 's/PORT/80/g' /etc/killercoda/host > /tmp/uihost
sed -i 's|https://||g' /tmp/uihost
sed 's/PORT/8080/g' /etc/killercoda/host > /tmp/apihost
sed -i 's|https://||g' /tmp/apihost
sed 's/PORT/81/g' /etc/killercoda/host > /tmp/ishost
sed -i 's|https://||g' /tmp/ishost

sed -ie "s|<WSO2_WEB_HOST>|$(sed 's:http:http:g' /tmp/uihost)|g" /root/apim-nginx.conf
sed -ie "s|<WSO2_API_HOST>|$(sed 's:http:http:g' /tmp/apihost)|g" /root/apim-nginx.conf
sed -ie "s|<WSO2_IS_HOST>|$(sed 's:http:http:g' /tmp/ishost)|g" /root/apim-nginx.conf

sed -ie "s|<HOST_NAME>|$(sed 's:http:http:g' /tmp/uihost)|g" /root/original-deployment.toml
sed -ie "s|<GW_HOST>|$(sed 's:http:http:g' /tmp/apihost)|g" /root/original-deployment.toml
sed -ie "s|<IS_HOST>|$(sed 's:http:http:g' /tmp/ishost)|g" /root/original-is-deployment.toml

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

wget -O /root/wso2am-4.2.0.zip https://github.com/devdineshw/resources/raw/main/binaries/WSO2/APIM/4.2.0/wso2am-4.2.0.zip?download=true
wget -O wso2is-6.1.0.zip https://github.com/devdineshw/resources/raw/main/binaries/WSO2/IS/6.1.0/wso2is-6.1.0.zip?download=true
mkdir /root/apim1
mkdir /root/is1
unzip /root/wso2am-4.2.0.zip -d /root/apim1/
unzip /root/wso2is-6.1.0.zip -d /root/is1/
cp /root/original-deployment.toml /root/apim1/wso2am-4.2.0/repository/conf/deployment.toml
cp /root/original-is-deployment.toml /root/is1/wso2is-6.1.0/repository/conf/deployment.toml

/etc/init.d/nginx restart

export DEBIAN_FRONTEND=noninteractive
#cat /root/debconf-slapd.conf | debconf-set-selections
#apt install ldap-utils slapd -y
cat /root/mysql-sel.conf | debconf-set-selections
apt install mysql-server -y

#mysql -e "create database wso2am_db CHARACTER SET latin1;"
mysql -e "create database wso2shared_db CHARACTER SET latin1;"

#mysql -u root wso2am_db < apim1/wso2am-4.2.0/dbscripts/apimgt/mysql.sql
mysql -u root wso2shared_db < apim1/wso2am-4.2.0/dbscripts/mysql.sql

wget -O mysql-connector-java-8.0.27.jar https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.27/mysql-connector-java-8.0.27.jar

cp mysql-connector-java-8.0.27.jar /root/apim1/wso2am-4.2.0/repository/components/lib/
cp mysql-connector-java-8.0.27.jar /root/is1/wso2is-6.1.0/repository/components/lib/

echo done > /tmp/background0