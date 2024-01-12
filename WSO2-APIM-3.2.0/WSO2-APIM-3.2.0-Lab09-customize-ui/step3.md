1) Copy image to the web app

`cp ti_*.jpg wso2am-3.2.0/repository/deployment/server/jaggeryapps/devportal/site/public/images/landing`{{execute}}

2) Open the defaultTheme.js inside the devportal app

`vi wso2am-3.2.0/repository/deployment/server/jaggeryapps/devportal/site/public/theme/defaultTheme.js`{{execute}}

3) Add the following section
```
const Configurations = {
    custom: {
        landingPage: {
            active: true,
            carousel: {
                active: true,
                slides: [
                    {
                        src: '/site/public/images/landing/ti_1.jpg',
                        title: '',
                        content:
                            '',
                    },
                    {
                        src: '/site/public/images/landing/ti_2.jpg',
                        title: '',
                        content:
                            '',
                    },
                    {
                        src: '/site/public/images/landing/ti_3.jpg',
                        title: '',
                        content:
                            '',
                    },
                ],
            },
            listByTag: {
                active: true,
                content: [
                    {
                        tag: 'Booking',
                        title: 'Checkout our Booking APIs',
                        description:
                            '',
                        maxCount: 5,
                    },
                    {
                        tag: 'Schedule',
                        title: 'Checkout our Schedule APIs',
                        description:
                            '',
                        maxCount: 5,
                    },
                ],
            },
            parallax: {
                active: false,
            },
            contact: {
                active: true,
            },
        },
    },
}
```

4) Check the devportal again to see the new home page

https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/devportal

Check the following documentation for more details

https://apim.docs.wso2.com/en/3.2.0/develop/customizations/customizing-the-developer-portal/enable-or-disable-home-page/#steps-to-configure-the-landing-page

