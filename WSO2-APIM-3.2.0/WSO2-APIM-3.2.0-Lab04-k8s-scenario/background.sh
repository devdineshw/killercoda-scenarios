#!/bin/bash

URL=`echo "[[HOST_SUBDOMAIN]]-30443-[[KATACODA_HOST]].[[KATACODA_DOMAIN]]"`


sed -i "s/KATACODE_HOST_NAME/$URL/g" wso2am-ga.sh
