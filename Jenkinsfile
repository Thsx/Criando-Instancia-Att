pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                sh "rm -rf Testando"
                sh "git clone https://github.com/Thsx/Testando"

            }
        }
        stage('Iniciando terra') {
            steps {
                sh "terraform init"
                sh "terraform plan"
                sh "terraform apply -auto-approve"
                sh "terraform show"
                $class: 'AmazonWebServicesCredentialsBinding',
        credentialsId: credentialsId,
        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Criado com sucesso'
            }
        }
    }
}
