stage ('Build & Unit Test'){
	node('WebGoatNode'){
		def mvnHome
		mvnHome = tool 'M3'
		sh './clean-env.sh'
		checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CloneOption', depth: 0, noTags: false, reference: '', shallow: false, timeout: 30]], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/tjrodrigues/continuousTesting.git']]])
		if (isUnix()) {
			sh "'${mvnHome}/bin/mvn' clean install"
		} else {
			bat(/"${mvnHome}\bin\mvn" clean install/)
		}
		junit testDataPublishers: [[$class: 'AttachmentPublisher']], testResults: 'webgoat-container/target/surefire-reports/*.xml'
		perfReport modeThroughput:true,sourceDataFiles:'webgoat-container/target/surefire-reports/*.xml'
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

stage('Performance Tests'){
	node('WebGoatNode'){
		//Run jMeter tests  
		bzt "./run-jmeter-test.yml"
	}
}

stage('Functional Tests') {
	parallel (
		"stream 1" : { 
			node ('SoapUiNode') {                          
				sh "./soapui-tests/run-test.bat" 
				junit testDataPublishers: [[$class: 'AttachmentPublisher']], testResults: 'soapui-tests/reports/*.xml'
				perfReport modeThroughput:true,sourceDataFiles:'wsoapui-tests/reports/*.xml'
			} 
		},
		"stream 2" : { 
			node ('WebGoatNode') { 
				sh "pybot ./rf/tests/web-tests.robot"
				step ([$class: 'RobotPublisher',
				disableArchiveOutput: false,
				logFileName: 'log.html',
				onlyCritical: true,
				otherFiles: '',
				outputFileName: 'output.xml',
				outputPath: '.',
				passThreshold: 90,
				reportFileName: 'robot-framework-report.html',
				unstableThreshold: 100]);                                                     
			} 
		}
	)
}




stage('Test Stage'){
	parallel test01: {
			node('master'){
				sh "echo master"
			}
	},
		test02: {
			node('WebGoatNode'){
				sh "echo webgoatnode"
			}
		}
}
