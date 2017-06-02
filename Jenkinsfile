pipeline {
	agent none
	
	environment {
		def mvnHome = too 'M3'	
	}
	stages{
		stage('test'){
			node('master'){
				sh "sleep 20s" 
				sh "echo hstream1"
			}
			node('WebGoatNode'){		
				sh "echo hello2"                                                      
			)
		}
	}
}
