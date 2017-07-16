stage ('Build'){
	node('ProjectBuildEnv'){
		def mvnHome
		mvnHome = tool 'M3'
		checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CloneOption', depth: 0, noTags: false, reference: '', shallow: false, timeout: 30]], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/tjrodrigues/continuousTesting.git']]])
		//sh './clean-env.sh'
		if (isUnix()) {
			//sh "'${mvnHome}/bin/mvn' clean install"
		} else {
			//bat(/"${mvnHome}\bin\mvn" install/)
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
			node ('ProjectBuildEnv') {                          
				def mvnHome
				mvnHome = tool 'M3'
				sh "echo Executing Unit tests..." 
				//sh "'${mvnHome}/bin/mvn' test"
				//junit 'webgoat-container/target/surefire-reports/*.xml'
				//junit testDataPublishers: [[$class: 'AttachmentPublisher']], testResults: 'webgoat-container/target/surefire-reports/*.xml'
			} 
		},
		"SonarQube" : { 
			node ('ProjectBuildEnv') {   
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

//stage('Packaging & Deploy (Test Env.)'){
//	node('ProjectBuildEnv'){
//		sh "./make-docker.sh"
//		sh './run-webgoat-docker-app-test.sh'
//		waitUntil {
			// Wait until app is up and running
//		try {
//				sh 'timeout 240 wget --retry-connrefused --tries=240 --waitretry=10 http://localhost:8181/WebGoat/login' // -o /dev/null
//				return true
//			} catch (exception) {
//				return false
//			}
//		}
//	}
//}

stage('Functional Tests') {
	parallel (
		"Robot Framework Web" : { 
			node ('ProjectTestSupport') {                          
				//build job: 'Web-AutTests', propagate: false
			} 
		},
		"SoapUI API" : { 
		node ('ProjectTestSupport') { 
				checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'SparseCheckoutPaths', sparseCheckoutPaths: [[path: 'soapui-tests/']]]], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/tjrodrigues/continuousTesting']]])
				//build job: 'API-AutTests', propagate: false 
			} 
		},
		"Robot Framework Mobile" : { 
			node ('ProjectTestSupport') {                          
			} 
		}
	)
}

stage('Performance Tests') {
	node ('ProjectTestSupport') {                          
		//build 'PerformanceTests'
	} 
}

stage('Security Tests - IBM') {
	node ('ProjectTestSupport') {                           
		//build job:'SecurityTests'
		
	} 
}

stage('Procesing test results') {
	node ('master') {                           
		step([
			$class           : 'hudson.plugins.robot.RobotPublisher',
			outputPath       : '../Web-AutTests/rf/_test-reports/*/',
			passThreshold    : 100,
			unstableThreshold: 100,
			otherFiles       : '',
			reportFileName   : '*\\report*.html',
			logFileName      : '*\\log*.html',
			outputFileName   : '*\\output*.xml'
		])
		
		
		// Copy RF reports to the pipeline workspace
		//step([$class: 'CopyArtifact', filter: 'rf/_test-reports/**/*.*', fingerprintArtifacts: true, projectName: 'WebAppFunctionalAutomatedTests-GUI', selector: [$class: 'LastCompletedBuildSelector']])
		//step([$class: 'XUnitPublisher', testTimeMargin: '3000', thresholdMode: 1, thresholds: [[$class: 'FailedThreshold', failureNewThreshold: '', failureThreshold: '', unstableNewThreshold: '', unstableThreshold: ''], [$class: 'SkippedThreshold', failureNewThreshold: '', failureThreshold: '', unstableNewThreshold: '', unstableThreshold: '']], tools: [[$class: 'JUnitType', deleteOutputFiles: true, failIfNotNew: false, pattern: 'rf/_test-reports/**/*.xml', skipNoTestFiles: false, stopProcessingIfError: false]]])	
		// Copy Soapui reports to the pipeline workspace
		//step([$class: 'CopyArtifact', filter: 'soapui-tests/_test-reports/*.xml', fingerprintArtifacts: true, projectName: 'WebAppFunctionalAutomatedTests-Services-FreeVersion', selector: [$class: 'LastCompletedBuildSelector']])
		//step([$class: 'XUnitPublisher', testTimeMargin: '3000', thresholdMode: 1, thresholds: [[$class: 'FailedThreshold', failureNewThreshold: '', failureThreshold: '', unstableNewThreshold: '', unstableThreshold: ''], [$class: 'SkippedThreshold', failureNewThreshold: '', failureThreshold: '', unstableNewThreshold: '', unstableThreshold: '']], tools: [[$class: 'JUnitType', deleteOutputFiles: true, failIfNotNew: false, pattern: 'soapui-tests/_test-reports/*.xml', skipNoTestFiles: false, stopProcessingIfError: false]]])
	} 
}

