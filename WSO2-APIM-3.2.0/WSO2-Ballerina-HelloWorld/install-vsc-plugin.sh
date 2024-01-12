echo 'debconf debconf/frontend select Noninteractive' | sudo debconf-set-selections
cd /tmp && apt-get update -y && apt install libarchive-tools -y # install bsdtar
curl -L https://marketplace.visualstudio.com/_apis/public/gallery/publishers/WSO2/vsextensions/ballerina/1.2.0-SNAPSHOT/vspackage | bsdtar -xvf - extension
mv extension /opt/.katacodacode/extensions/WSO2.ballerina-1.2.0-SNAPSHOT
