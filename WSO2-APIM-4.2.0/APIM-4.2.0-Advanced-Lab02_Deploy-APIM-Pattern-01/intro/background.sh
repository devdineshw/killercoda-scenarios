apt update
apt install openjdk-11-jdk -y
echo "export JAVA_HOME='/usr/lib/jvm/java-11-openjdk-amd64/'" >> /etc/profile && source /etc/profile

echo done > /tmp/background0