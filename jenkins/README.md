# Jenkins
Jenkins folder containing jenkins-related material

## Requirements
- Github account
- Run Jenkins via [docker](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)
    - Via Vagrant
    ```sh
    $ vagrant up
    ```
    - Natively
    ```sh
    $ docker run \
        --rm \
        -u root \
        -p 8080:8080 \
        -v jenkins-data:/var/jenkins_home \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v "$HOME":/home \
        jenkinsci/blueocean
    ```  
- Run Jenkins [standalone](http://mirrors.jenkins.io/war-stable/latest/jenkins.war)
   ```sh
    $ java -jar jenkins.war
    ``` 
### Considerations

- note the admin password dumped on log
- open a browser on http://localhost:8080
- run the initial setup wizard. Choose "recommended plugins"

## Creating your first Pipeline

- Create Pipeline job: Jenkins >> New Item >> pipeline-example-one >> Pipeline job >> Ok >> Pipeline script >> 
 ```yaml
    node { 
        stage('Stage 1') {
            echo 'Hello World' 
        }
    }
``` 

## Running a pipeline example as pipeline project

- Create Pipeline job: Jenkins >> New Item >> pipeline-example-two >> Pipeline job >> Ok >> Pipeline script >> Try example "Github+Maven"
- fix error M3 and re-run
- Setup Maven: Manage Jenkins >> Global Tool Configuration >> Add Maven >> maven(M3) >>  Install automatically >> Save
- Fix archive deprecated error :: archiveArtifacts

## Running a pipeline example as pipeline project with real code

- Create Pipeline job: Jenkins >> New Item >> pipeline-example-three >> Pipeline job >> Ok >> Pipeline script >> Copy and paste [Jenkinsfile provided](https://github.com/cmcornejocrespo/devops-training-material/blob/develop/jenkins/Jenkinsfile)

## Running a pipeline example as CI/CD pipeline project

- Create Pipeline job: Jenkins >> New Item >> pipeline-example-ci-cd>> Pipeline job >> Ok >> Pipeline script >> Copy and paste [Jenkinsfile provided](https://github.com/cmcornejocrespo/devops-training-material/blob/develop/jenkins/Jenkinsfile.complete.pipeline)

## Creating your first Multibranch Pipeline project

- Note the way to build different branches using docker
- Create Multibranch Pipeline >> New Item >> Multibranch Pipeline >> Multibranch Pipeline >> Ok
- Setup Github token: Create token [here](https://github.com/settings/tokens/new?scopes=repo,read:user,user:email) with these scopes: repo:status and public_repo and copy the access token generated.
- Create credentials for github with your github username and the token as password
- Type your github username as owner
- Select devops-training-material 
- Save

## Run previous examples using Blue Ocean UI

- [Getting Started with Blue Ocean](https://jenkins.io/doc/book/blueocean/getting-started/)

### References
- [Installing Jenkins](https://jenkins.io/doc/book/installing/)
- [What is a Jenkins Pipeline?](https://jenkins.io/doc/pipeline/tour/hello-world/)
- [Using a Jenkinsfile](https://jenkins.io/doc/book/pipeline/jenkinsfile/#using-a-jenkinsfile) 
- [Getting Started with Pipeline](https://jenkins.io/doc/book/pipeline/getting-started/#getting-started-with-pipeline) 
- [Pipeline Examples](https://jenkins.io/doc/pipeline/examples/#pipeline-examples) 
- [Blue Ocean Pipeline Editor](https://github.com/jenkinsci/blueocean-plugin/tree/master/blueocean-pipeline-editor)