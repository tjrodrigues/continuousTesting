pipeline {
	agent none
	
	environment {
		def mvnHome = too 'M3'	
	}
	stages{
		stage('test'){
			agent { label 'master'} 
			steps{
				sh "sleep 20s" 
				sh "echo hstream1"
			}
			agent { label 'WebGoatNode'}
			steps {		
				sh "echo hello2"                                                      
			}
		}
	}
}
