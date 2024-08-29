pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Building project..."'
                sh 'make build'  // Replace with your build command
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Running tests..."'
                sh 'make test'  // Replace with your test command
            }
        }
    }
    post {
        always {
            emailext (
                subject: "Build ${currentBuild.fullDisplayName}",
                body: "Build ${currentBuild.fullDisplayName} finished with status: ${currentBuild.currentResult}",
                recipientProviders: [developers(), requestor()]
            )
        }
    }
}
