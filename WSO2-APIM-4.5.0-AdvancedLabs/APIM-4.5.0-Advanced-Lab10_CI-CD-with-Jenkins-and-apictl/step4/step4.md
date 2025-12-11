- Create a new pipeline

    - Go to the Jenkins dashboard.

        {{TRAFFIC_HOST1_8080}}

    - Click 'New Item' from the Jenkins main page

    - Enter a name for the pipeline. e.g.: `api-cicd-pipeline`

    - Choose 'Pipeline' option and click 'Ok'.

    - Select 'GitHub hook trigger for GITScm polling' under the 'Build Triggers' section to automatically trigger the build from github webhook calls

    - Copy the content from below file to the pipeline script section. Update the git URLs (Line 20 and 24) in the script and save. Also update the branch name (main) if it is different in your repo.

        `cat /root/resources/JenkinsFile`{{exec}}

Continue to the next section.