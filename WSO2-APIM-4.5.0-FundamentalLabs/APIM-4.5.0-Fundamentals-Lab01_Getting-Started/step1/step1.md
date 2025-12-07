WSO2 API Manager requires Java runtime as a dependancy, We need to install a supported Java 11 version.
Please follow the below steps to install OpenJDK 11 from the Ubuntu package repository. 

Instead, you could use your prefered java runtime (Oracle JDK, Amazon Corretto, etc.) in your rnvironment. WSO2 APIM 4.2.0 supported JDK versions are mentioned in the below documentation page

https://apim.docs.wso2.com/en/4.5.0/install-and-setup/setup/reference/product-compatibility/#tested-jdks

- Update the ubuntu package index before installing

    `apt update`{{execute}}

- Install JDK 11

    `apt install openjdk-21-jdk -y`{{execute}}

Once the Java runtime is installed, JAVA_HOME environment variable needs to be configured. Following command will append the environment variable to your profile configuration. Incase you want to set the JAVA_HOME only for the API Manager runtime, you could even add the JAVA_HOME in the API Manager startup script (<APIM_HOME>/bin/api-manager.sh) too.

- Create environment variable

    `echo "export JAVA_HOME='/usr/lib/jvm/java-21-openjdk-amd64/'" >> /etc/profile && source /etc/profile`{{execute}}

- Test the Java version

    `java --version`{{execute}}

Continue to the next section.
