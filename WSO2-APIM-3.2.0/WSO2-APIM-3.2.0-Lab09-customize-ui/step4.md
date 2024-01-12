1) Open the defaultTheme.js inside the devportal app

`vi wso2am-3.2.0/repository/deployment/server/jaggeryapps/devportal/site/public/theme/defaultTheme.js`{{execute}}

2) Add the following section
```
const Configurations = {
    custom: {
        appBar: {
            logo: '/site/public/images/logo.svg',
            logoHeight: 19,
            logoWidth: 208,
            background: '#006ab3',
            backgroundImage: 'none',
            searchInputBackground: '#fff',
            searchInputActiveBackground: '#fff',
            activeBackground: '#1c6584',
            showSearch: true,
            drawerWidth: 200,
        },
        footer: {
            active: true,
            text: '© 2022 SNCB',
            background: '#fff',
            color: '#008ff5',
            textAlign: 'right',
        },
        leftMenu: {
            position: 'vertical-left',
            style: 'icon left',
            iconSize: 24,
            leftMenuTextStyle: 'uppercase',
            width: 400,
            background: '#006ab3',
            backgroundImage: 'none',
            leftMenuActive: '#00597f',
            leftMenuActiveSubmenu: '#0d1723',
            activeBackground: '#191e46',
            rootIconVisible: true,
            rootIconSize: 42,
            rootIconTextVisible: false,
            rootBackground: '#000',
        },
    },
};
```

3) Check the devportal again to see the new home page

https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/devportal


Check the following documentation for more details

https://apim.docs.wso2.com/en/3.2.0/develop/customizations/customizing-the-developer-portal/enable-or-disable-footer/

https://apim.docs.wso2.com/en/3.2.0/develop/customizations/customizing-the-developer-portal/enable-or-disable-banner/

https://apim.docs.wso2.com/en/3.2.0/develop/customizations/customizing-the-developer-portal/styling-api-details-left-menu/

https://apim.docs.wso2.com/en/3.2.0/develop/customizations/customizing-the-developer-portal/styling-the-logo-and-header/

https://apim.docs.wso2.com/en/3.2.0/develop/customizations/customizing-the-developer-portal/styling-api-details-info-section/
