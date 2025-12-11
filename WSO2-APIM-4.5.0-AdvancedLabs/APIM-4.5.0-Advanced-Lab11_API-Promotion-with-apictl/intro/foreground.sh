echo "Please wait until we prepare the environment !"

spin[0]="-"
spin[1]="\\"
spin[2]="|"
spin[3]="/"
echo -n "[Loading] ${spin[0]}"
while [ ! -f /tmp/background0 ];
do
  for i in "${spin[@]}"
  do
        clear
        echo -ne "[Loading] \b$i"
        sleep 0.2
  done
done

echo "Creating Java environment variables"
echo "export JAVA_HOME='/usr/lib/jvm/java-21-openjdk-amd64/'" >> /etc/profile && source /etc/profile
echo Done.. Now you can start !