- Copy the required resources to server
    - create a directory for images and copy the log file under the devportal

      `mkdir apim1/wso2am-4.2.0/repository/deployment/server/webapps/devportal/site/public/theme/images`{{exec}}

      `cp resources/images/logo.png apim1/wso2am-4.2.0/repository/deployment/server/webapps/devportal/site/public/theme/images/`{{exec}}

- Open the custom theme file and update relevent section

    `vi apim1/wso2am-4.2.0/repository/deployment/server/webapps/devportal/site/public/theme/userTheme.json`{{exec}}

    > NOTE: Please add required sections under the custom element in the userTheme.json. You could update the userTheme file while the server is running and save and check the impact of each section by refreshing the browser.
    ```
    {
        "custom": {
            "landingPage": {
               "active": false
            }
            // updates should goes here
        }
    }
    ```

    - Update the header section theaming (changing the logo and colors)
    
      ```
        "appBar": {
            "logo": "/site/public/theme/images/logo.png",
            "logoHeight": 50,
            "logoWidth": 250,
            "background": "#B81D09",
            "activeBackground": "#EE871E",
            "backgroundImage" : ""
        }
      ```{{copy}}
    
    - Update the footer section theaming (changing the text and colors)
    
      ```
        "footer": {
            "active": true,
            "text": "Eatalion Pizza | © All rights reserved",
            "background": "#FFD9B9",
            "color": "#B81D09"
        }
      ```{{copy}}

    - Update the left menu style
      ```
        "leftMenu": {
            "background": "#FFD9B9",
            "backgroundImage": "",
            "leftMenuActive": "#EE871E",
            "leftMenuActiveSubmenu": "#F6993A"
        }
      ```

    - Update the tag cloud style
    
      ```
        "tagCloud": {
            "active": true,
            "leftMenu": {
                "background": '#FFD9B9',
                "color": '#B81D09'
            }
        }
      ```{{copy}}

    - Update the title text
    
      ```
        "title": {
            "prefix": "Eatalion Pizza - ",
            "sufix": "[API Portal]"
        }
      ```{{copy}}

    - Save the file. Refresh the browser and check the new style. 

    > NOTE: Similarly you could update the publisher portal too.

Continue to the next section.