- Create a new pipeline
    - Clieck 'New Item' from the Jenkins main page

    - Enter a name for the pipeline. e.g.: `api-cicd-pipeline`

    - Choose 'Pipeline' option and click 'Ok'.

    - Select 'GitHub hook trigger for GITScm polling' to auto matically trigger the build from github webhook calls

    - Use the content from below file in the pipeline script section and save the pipeline

        `cat /root/resources/JenkinsFile`{{exec}}

Continue to the next section.