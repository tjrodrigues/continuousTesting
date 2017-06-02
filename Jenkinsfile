stage ('Build'){
	node('WebGoatNode'){
		def mvnHome
		mvnHome = tool 'M3'
		
		checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CloneOption', depth: 0, noTags: false, reference: '', shallow: false, timeout: 30]], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/tjrodrigues/continuousTesting.git']]])
		if (isUnix()) {
			sh "'${mvnHome}/bin/mvn' clean install"
		} else {
			bat(/"${mvnHome}\bin\mvn" clean install/)
		}
	}
}

stage('Static Analysis') { 
	node('WebGoatNode'){
		def mvnHome
		mvnHome = tool 'M3'
		withSonarQubeEnv('SonarQube') {
			if (isUnix()) {
				sh "'${mvnHome}/bin/mvn' $SONAR_MAVEN_GOAL -Dsonar.host.url=$SONAR_HOST_URL -Dsonar.login=$SONAR_AUTH_TOKEN"
			} else {
				bat(/"${mvnHome}\bin\mvn" $SONAR_MAVEN_GOAL -Dsonar.host.url=$SONAR_HOST_URL -Dsonar.login=$SONAR_AUTH_TOKEN/)
			}
		}	
	}
}

stage('Unit Test') { 
        
}

stage('Test'){
	node('master'){
		sh "echo build"
	}
}
stage('Deploy'){
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
