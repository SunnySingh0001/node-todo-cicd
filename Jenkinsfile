pipeline{
    agent { label 'agent1'}
    stages{
        stage("Code"){
            steps{
                git branch: 'master' , url: 'https://github.com/SunnySingh0001/node-todo-cicd.git'
            }
        }
        stage("Build"){
            steps{
                sh 'docker build -t sunnysingh0001/node-todo-test:latest .'
            }
        }
        stage("Push"){
            steps{
                withCredentials([usernamePassword(credentialsId: 'dockerHub' , passwordVariable: 'passvar' , usernameVariable: 'usernamevar')]){
                    sh 'echo "$passvar" | docker login -u "$usernamevar" --password-stdin'
                    sh 'docker push sunnysingh0001/node-todo-test:latest'
                }
            }
        }
        stage("Deploy"){
            steps{
                sh 'docker-compose down && docker-compose up -d'
            }
        }
    }
}
