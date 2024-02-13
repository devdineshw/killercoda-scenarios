sed 's/PORT/80/g' /etc/killercoda/host > /tmp/uihost
sed -i 's|https://||g' /tmp/uihost
sed 's/PORT/8080/g' /etc/killercoda/host > /tmp/apihost
sed -i 's|https://||g' /tmp/apihost
sed -ie "s|<WSO2_WEB_HOST>|$(sed 's:http:http:g' /tmp/uihost)|g" /root/apim-nginx.conf
sed -ie "s|<WSO2_API_HOST>|$(sed 's:http:http:g' /tmp/apihost)|g" /root/apim-nginx.conf
echo done > /tmp/background0