EXTENSION_DIR=/opt/.katacodacode/extensions/WSO2.ballerina-3.0.0
while ! [ -d "$EXTENSION_DIR" ];
do
  clear;
  echo 'Installing VS Code extensions, please wait before opening the IDE'.
  sleep 1
done
clear
: VS Code extensions installed, now you can open the IDE
