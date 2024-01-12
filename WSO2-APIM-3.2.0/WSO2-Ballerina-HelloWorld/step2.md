Go to the workspace

`cd vscode-workspace`{{execute}}

Create a ballerina project

`bal new greeter`{{execute}}

Switch to the IDE view and replace the main.bal content with following code

```
import ballerina/http;

listener http:Listener httpListener = new (8080);

service / on httpListener {
    resource function get greeting() returns string { 
        return "Hello, World!"; 
    }

    resource function get greeting/[string name]() returns string { 
        return "Hello " + name; 
    }
}
```{{copy}}

Switch to a terminal window and start the service

`bal run greeter`{{execute}}
