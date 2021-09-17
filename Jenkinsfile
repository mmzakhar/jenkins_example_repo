pipeline {
    agent { docker { image 'ubuntu' } }
    stages {
        stage('build') {
            steps {
                sh 'build.sh'
            }
        }
    }
}
