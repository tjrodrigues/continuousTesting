pipeline {
	agent none
	
	environment {
		def mvnHome = too 'M3'	
	}
	stages{
		stage('test'){
			steps{
				parallel (
					"stream 1" : { 
							agent { label 'master'}                         
							sh "sleep 20s" 
							sh "echo hstream1"
						} 
					},
					"stream 2" : { 
							agent  { label 'master'} 
							sh "echo hello2"
							sh "hashtag fail"                                                       
						} 
					}
				)
			}
		}
	}
}
