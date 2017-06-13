stage ('Build & Unit Test & Satic Analysis'){
	node('WebGoatNode'){
		def mvnHome
		mvnHome = tool 'M3'
		checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CloneOption', depth: 0, noTags: false, reference: '', shallow: false, timeout: 30]], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/tjrodrigues/continuousTesting.git']]])
		sh './clean-env.sh'
		if (isUnix()) {
			sh "'${mvnHome}/bin/mvn' clean install"
		} else {
			bat(/"${mvnHome}\bin\mvn" clean install/)
		}
		junit testDataPublishers: [[$class: 'AttachmentPublisher']], testResults: 'webgoat-container/target/surefire-reports/*.xml'
		//perfReport modeThroughput:true,sourceDataFiles:'webgoat-container/target/surefire-reports/*.xml'
		withSonarQubeEnv('SonarQube') {
			if (isUnix()) {
				sh "'${mvnHome}/bin/mvn' $SONAR_MAVEN_GOAL -Dsonar.host.url=$SONAR_HOST_URL -Dsonar.login=$SONAR_AUTH_TOKEN"
			} else {
				bat(/"${mvnHome}\bin\mvn" $SONAR_MAVEN_GOAL -Dsonar.host.url=$SONAR_HOST_URL -Dsonar.login=$SONAR_AUTH_TOKEN/)
			}
		}	
	}
}

//stage('Static Analysis') { 
//	node('WebGoatNode'){
//		def mvnHome
//		mvnHome = tool 'M3'
//		withSonarQubeEnv('SonarQube') {
//			if (isUnix()) {
//				sh "'${mvnHome}/bin/mvn' $SONAR_MAVEN_GOAL -Dsonar.host.url=$SONAR_HOST_URL -Dsonar.login=$SONAR_AUTH_TOKEN"
//			} else {
//				bat(/"${mvnHome}\bin\mvn" $SONAR_MAVEN_GOAL -Dsonar.host.url=$SONAR_HOST_URL -Dsonar.login=$SONAR_AUTH_TOKEN/)
//			}
//		}	
//	}
//}

stage('Deploy'){
	node('WebGoatNode'){
		sh "./make-docker.sh"
		sh './run-webgoat-docker-app-test.sh'
		waitUntil {
			// Wait until app is up and running
			try {
				sh 'timeout 240 wget --retry-connrefused --tries=240 --waitretry=10 http://localhost:8181/WebGoat/login' // -o /dev/null
				return true
			} catch (exception) {
				return false
			}
		}
	}
}

stage('Functional Tests') {
	parallel (
		"Robot Framework Web 1" : { 
			node ('WebGoatNode') {                          
				sh "echo Executing Robot Framework tests..." 
				build 'WebAppFunctionalAutomatedTests-GUI'
			} 
		},
		"SoapUI PRO" : { 
			node ('SoapUiNode') { 
				sh "echo Executing SoapUI tests..." 
				build 'WebAppFunctionalAutomatedTests-Services'                                                    
			} 
		},
		"Robot Framework Mobile" : { 
			node ('WebGoatNode') {                          
				sh "echo Executing Mobile tests..." 
			} 
		}
	)
}

stage('Performance Tests') {
	node ('WebGoatNode') {                          
		sh "echo Executing jMeter tests..." 
		build 'PerformanceTests'
	} 
}

stage('Security Tests') {
	node ('SoapUiNode') {                          
		sh "echo Executing AppScan tests..." 
		build 'AppScan'
	} 
}

