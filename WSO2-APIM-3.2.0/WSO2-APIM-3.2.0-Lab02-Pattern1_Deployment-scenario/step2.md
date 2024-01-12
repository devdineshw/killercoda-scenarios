
Edit the sample nginx config file

Open the file and update the host name placeholders with this playground host

```
WSO2_HTTP_HOST = {{TRAFFIC_HOST1_80}}

WSO2_HTTPS_HOST = {{TRAFFIC_HOST1_443}}

WSO2_GW_HOST = {{TRAFFIC_HOST1_8243}}
```

`vi apim-nginx.conf`{{execute}}

copy the file to nginx server
`cp apim-nginx.conf /etc/nginx/conf.d/`{{execute}}

Update the nginx settings to allow long host names

`vi /etc/nginx/nginx.conf`{{execute}}

set the and save the file

`server_names_hash_bucket_size=128`

restart the nginx service

`/etc/init.d/nginx restart`{{execute}}


Verify the nginx https configuration by accessing the following URL

{{TRAFFIC_HOST1_443}}
