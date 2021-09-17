pipeline {
    agent { docker { image 'intel/oneapi-hpckit' } }
    stages {
        stage('build') {
            steps {
                sh 'icpc hello.cpp'
            }
        }
    }
}
