#!/bin/bash

KCSD=`cat kcsubdomain`
KCHN=`cat kchostname`

sed -i "s/KC_SUBDOMAIN/$KCSD/g" deployment.toml
sed -i "s/KC_HOSTNAME/$KCHN/g" deployment.toml

echo "Setting the hostnames"
