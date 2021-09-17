pipeline {
    agent { docker { image 'intel/oneapi-hpckit' } }
    stages {
        stage('build') {
            steps {
                sh 'chmod 755 build.sh'
                sh './build.sh'
            }
        }
    }
}
