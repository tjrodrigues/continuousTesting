pipeline {
	agent none
	
	environment {
		def mvnHome = too 'M3'	
	}
	parallel (
		"stream 1" : { 
			node {                          
				sh "sleep 20s" 
				sh "echo hstream1"
			} 
		},
		"stream 2" : { 
			node  { 
				sh "echo hello2"
				sh "hashtag fail"                                                       
			} 
		}
	)
}
