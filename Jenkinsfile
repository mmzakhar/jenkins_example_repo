pipeline {
    agent { docker { image 'ubuntu' } }
    stages {
        stage('build') {
            steps {
                sh 'g++ hello.cpp'
            }
        }
    }
}
