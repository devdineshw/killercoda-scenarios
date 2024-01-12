
Edit the sample nginx config file

Open the file and update the host name placeholders with this playground host

```
KATACODE_HTTP_HOST = [[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com

KATACODE_HTTPS_HOST = [[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com

KATACODE_GW_HOST = [[HOST_SUBDOMAIN]]-8243-[[KATACODA_HOST]].environments.katacoda.com
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

https://[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com
