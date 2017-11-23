# Jenkins
Jenkins folder containes jenkins-related material

## Requirements
- Github account
- Run Jenkins via docker
    - Via Vagrant
    ```sh
    $ vagrant up
    ```
    - Natively
    ```sh
    $ docker run -p 8080:8080 jenkinsci/blueocean
    ```  
- Run Jenkins [standalone](http://mirrors.seville-jam.es/jenkins/war-stable/2.73.3/jenkins.war)
   ```sh
    $ java -jar jenkins.war
    ``` 
### Considerations

- note the admin password dumped on log
- open a browser on http://localhost:8080
- run the initial setup wizard. Choose "recommended plugins"

## Creating your first Pipeline

- [What is a Jenkins Pipeline?](https://jenkins.io/doc/pipeline/tour/hello-world/)

## Running a pipeline example one

- Setup Maven: Manage Jenkins >> Global Tool Configuration >> Add Maven >> maven >>  Install automatically >> Save
- Create Pipeline job: Jenkins >> New Item >> pipeline-example-one >> Pipeline job >> Ok >> Pipeline script >> Copy and paste [Jenkinsfile provided](https://github.com/atSistemas/devops-training-material/blob/master/jenkins/Jenkinsfile.full)

## Running a pipeline example two

- Setup Github token: Create token [here](https://github.com/settings/tokens) with these scopes: repo:status and public_repo and copy the access token generated.
- Setup Maven: Manage Jenkins >> Global Tool Configuration >> Add Maven >> maven >>  Install automatically >> Save
- Create 

## Reviewing Pipeline Examples

### References
- [Getting started with Jenkins](https://jenkins.io/download/) 
- [Getting Started with Pipeline](https://jenkins.io/doc/book/pipeline/getting-started/#getting-started-with-pipeline) 
- [Pipeline Examples](https://jenkins.io/doc/pipeline/examples/#pipeline-examples) 