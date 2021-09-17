pipeline {
    agent { docker { image 'ubuntu' } }
    stages {
        stage('build') {
            steps {
                sh 'chmod 755 build.sh'
                sh './build.sh'
            }
        }
    }
}
