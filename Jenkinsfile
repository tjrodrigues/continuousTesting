pipeline {
	agent 'master'
	
	environment {
		def mvnHome = too 'M3'	
	}

	stages {
		stage('Functional Tests') {
			parallel (
				"stream 1" : { 
					node ('master') {                          
						sh "sleep 20s" 
						sh "echo hstream1"
					} 
				},

				"stream 2" : { 
					node ('master') { 
						sh "echo hello2"
						sh "hashtag fail"                                                       
					} 
				}
			)}

		stage('Test') {
			steps {
				echo 'Testing..'
			}
		}

		stage('Deploy') {
			steps {
				echo 'Deploying....'
			}
		}
	}
}
