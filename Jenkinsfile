stage ('Build'){
	node('WebGoatNode'){
		def mvnHome
		mvnHome = tool 'M3'
		checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CloneOption', depth: 0, noTags: false, reference: '', shallow: false, timeout: 30]], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/tjrodrigues/continuousTesting.git']]])
		sh './clean-env.sh'
		if (isUnix()) {
			sh "'${mvnHome}/bin/mvn' install"
		} else {
			bat(/"${mvnHome}\bin\mvn" install/)
		}
		//junit testDataPublishers: [[$class: 'AttachmentPublisher']], testResults: 'webgoat-container/target/surefire-reports/*.xml'
		//perfReport modeThroughput:true,sourceDataFiles:'webgoat-container/target/surefire-reports/*.xml'
		//withSonarQubeEnv('SonarQube') {
		//	if (isUnix()) {
		//		sh "'${mvnHome}/bin/mvn' $SONAR_MAVEN_GOAL -Dsonar.host.url=$SONAR_HOST_URL -Dsonar.login=$SONAR_AUTH_TOKEN"
		//	} else {
		//		bat(/"${mvnHome}\bin\mvn" $SONAR_MAVEN_GOAL -Dsonar.host.url=$SONAR_HOST_URL -Dsonar.login=$SONAR_AUTH_TOKEN/)
		//	}
		//}	
	}
}


stage('Unit Test & Satic Analysis') {
	parallel (
		"Unit Test" : { 
			node ('WebGoatNode') {                          
				def mvnHome
				mvnHome = tool 'M3'
				sh "echo Executing Unit tests..." 
				//sh "'${mvnHome}/bin/mvn' test"
				//junit testDataPublishers: [[$class: 'AttachmentPublisher']], testResults: 'webgoat-container/target/surefire-reports/*.xml'
			} 
		},
		"SonarQube" : { 
			node ('WebGoatNode') {   
				def mvnHome
				mvnHome = tool 'M3'
				sh "echo Executing SonarQube Analysis..." 
				//withSonarQubeEnv('SonarQube') {
				//	if (isUnix()) {
				//		sh "'${mvnHome}/bin/mvn' $SONAR_MAVEN_GOAL -Dsonar.host.url=$SONAR_HOST_URL -Dsonar.login=$SONAR_AUTH_TOKEN"
				//	} else {
				//		bat(/"${mvnHome}\bin\mvn" $SONAR_MAVEN_GOAL -Dsonar.host.url=$SONAR_HOST_URL -Dsonar.login=$SONAR_AUTH_TOKEN/)
				//	}
				//} 
			} 
		}
	)
}

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
				build job: 'WebAppFunctionalAutomatedTests-GUI', propagate: false
			} 
		},
		"SoapUI" : { 
		node ('hostSlave') { 
				checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'SparseCheckoutPaths', sparseCheckoutPaths: [[path: 'soapui-tests/']]]], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/tjrodrigues/continuousTesting']]])
				//bat 'soapui-tests\\run-test-free-version.bat', propagate: false
				build job: 'WebAppFunctionalAutomatedTests-Services-FreeVersion', propagate: false 
				step([$class: 'XUnitPublisher', testTimeMargin: '3000', thresholdMode: 1, thresholds: [[$class: 'FailedThreshold', failureNewThreshold: '', failureThreshold: '', unstableNewThreshold: '', unstableThreshold: ''], [$class: 'SkippedThreshold', failureNewThreshold: '', failureThreshold: '', unstableNewThreshold: '', unstableThreshold: '']], tools: [[$class: 'JUnitType', deleteOutputFiles: true, failIfNotNew: true, pattern: 'soapui-tests\\_test-reports\\*.xml', skipNoTestFiles: false, stopProcessingIfError: false]]])	
			} 
		},
		"Robot Framework Mobile" : { 
			node ('WebGoatNode') {                          
				sh "echo Executing Mobile tests..." 
			} 
		}
	)
}

//node ('hostSlave') { 
//	stage('Functional Tests - API') {
				//sh "echo Executing SoapUI tests... "  
				//checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'SparseCheckoutPaths', sparseCheckoutPaths: [[path: 'soapui-tests/']]]], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/tjrodrigues/continuousTesting']]])
				//bat 'soapui-tests\\run-test-free-version.bat', propagate: false
				//bat(/soapui-tests\\run-test-free-version.bat/)
				//build job: 'test', propagate: false
				//step([$class: 'XUnitPublisher', testTimeMargin: '3000', thresholdMode: 1, thresholds: [[$class: 'FailedThreshold', failureNewThreshold: '', failureThreshold: '', unstableNewThreshold: '', unstableThreshold: ''], [$class: 'SkippedThreshold', failureNewThreshold: '', failureThreshold: '', unstableNewThreshold: '', unstableThreshold: '']], tools: [[$class: 'JUnitType', deleteOutputFiles: true, failIfNotNew: true, pattern: 'soapui-tests\\_test-reports\\*.xml', skipNoTestFiles: false, stopProcessingIfError: false]]]) 	
//	}  
//}

stage('Performance Tests') {
	node ('WebGoatNode') {                          
		build 'PerformanceTests'
	} 
}

stage('Security Tests - IBM') {
	node ('hostSlave') {                           
		build job:'AppScan-IBM'
		//step([$class: 'AppScanStandardBuilder', additionalCommands: '', authScan: true, authScanPw: '', authScanRadio: true, authScanUser: '', generateReport: true, includeURLS: '', installation: 'AppScan', pathRecordedLoginSequence: 'appscan/ibm-test-site-appscan-login-sequence.login', policyFile: '', reportName: 'WebGoat', startingURL: 'https://demo.testfire.net', verbose: true])
		
	} 
}

