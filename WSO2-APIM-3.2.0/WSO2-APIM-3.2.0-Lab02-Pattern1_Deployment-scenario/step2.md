
Edit the sample nginx config file

1) Open the custom nging configuration file

`vi apim-nginx.conf`{{execute}}

2) update the host name placeholders with this playground host. Copy only the hostname from below URLs (without https://)

```
WSO2_WEB_HOST = {{TRAFFIC_HOST1_80}}

WSO2_API_HOST = {{TRAFFIC_HOST1_8080}}
```{{}}


3) copy the file to nginx server
`cp apim-nginx.conf /etc/nginx/conf.d/`{{execute}}

4) Update the nginx settings to allow long host names

`vi /etc/nginx/nginx.conf`{{execute}}

4.1) Look for the following key and update accordingly

`server_names_hash_bucket_size=128`

4.2) Save and exit from the editor


5) restart the nginx service

`/etc/init.d/nginx restart`{{execute}}


6) Verify the nginx https configuration by accessing the following URL

{{TRAFFIC_HOST1_80}}
