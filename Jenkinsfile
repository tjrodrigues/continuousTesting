stage ('Build'){
	node('ProjectBuildEnv'){
		def mvnHome
		mvnHome = tool 'M3'
		checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CloneOption', depth: 0, noTags: false, reference: '', shallow: false, timeout: 30]], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/tjrodrigues/continuousTesting.git']]])
		sh './clean-env.sh'
		if (isUnix()) {
			sh "'${mvnHome}/bin/mvn' clean install"
		} else {
			bat(/"${mvnHome}\bin\mvn" install/)
		}
	}
}

stage('Unit Test & Satic Analysis') {
	parallel (
		"Unit Test" : { 
			node ('ProjectBuildEnv') {                          
				def mvnHome
				mvnHome = tool 'M3'
				sh "echo Executing Unit tests..." 
				sh "'${mvnHome}/bin/mvn' test"
				junit 'webgoat-container/target/surefire-reports/*.xml'
			} 
		},
		"SonarQube" : { 
			node ('ProjectBuildEnv') {   
				def mvnHome
				mvnHome = tool 'M3'
				sh "echo Executing SonarQube Analysis..." 
				checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CloneOption', depth: 0, noTags: false, reference: '', shallow: false, timeout: 30]], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/tjrodrigues/continuousTesting.git']]])
				withSonarQubeEnv('sonar.critical.pt') {
					if (isUnix()) {
						sh "'${mvnHome}/bin/mvn' install $SONAR_MAVEN_GOAL -Dsonar.host.url=$SONAR_HOST_URL -Dsonar.login=$SONAR_AUTH_TOKEN"
					} else {
						bat(/"${mvnHome}\bin\mvn" install $SONAR_MAVEN_GOAL -Dsonar.host.url=$SONAR_HOST_URL -Dsonar.login=$SONAR_AUTH_TOKEN/)
					}
				} 
			} 
		}
	)
}

stage('Packaging & Deploy (Test Env.)'){
	node('ProjectBuildEnv'){
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

stage('Deploy (Staging Env.)'){
	node('ProjectBuildEnv'){
	}
}

stage('Performance Tests - jMeter') {
	node ('ProjectTestSupport') {                          
		build 'PerformanceTests'
	} 
}

stage('Security Tests - IBM AppScan') {
	node ('ProjectTestSupport') {                           
		build job:'SecurityTests'
		
	} 
}

stage ('Deployment'){
	input 'Do you approve deployment?'
	node('ProjectBuildEnv'){
		//deploy things
	}
}

