- Create a new pipeline
    - Go to the Jenkins dashboard.

        {{TRAFFIC_HOST1_8080}}

    - Click 'New Item' from the Jenkins main page

    - Enter a name for the pipeline. e.g.: `api-cicd-pipeline`

    - Choose 'Pipeline' option and click 'Ok'.

    - Select 'GitHub hook trigger for GITScm polling' under the 'B'uild Triggers' section to automatically trigger the build from github webhook calls

    - Use the content from below file in the pipeline script section and save the pipeline

        `cat /root/resources/JenkinsFile`{{exec}}

Continue to the next section.