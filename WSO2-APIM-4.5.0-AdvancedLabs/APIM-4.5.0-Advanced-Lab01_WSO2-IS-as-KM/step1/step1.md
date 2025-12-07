WSO2 API Manager requires Java runtime as a dependancy, We need to install a supported Java 17 version.
Please follow the below steps to install OpenJDK 17 from the Ubuntu package repository. Instead, you could use your own java runtime also in local system.

- Update the ubuntu package index before installing

  `apt update`{{execute}}

- Install JDK

  `apt install openjdk-17-jdk -y`{{execute}}

  Once the Java runtime is installed, JAVA_HOME environment variable needs to be configured. Following command will append the environment variable to your profile configuration.

- Create environment variable

  `echo "export JAVA_HOME='/usr/lib/jvm/java-17-openjdk-amd64/'" >> /etc/profile && source /etc/profile`{{execute}}

- Test the Java version

  `java --version`{{execute}}

Go to the next section
