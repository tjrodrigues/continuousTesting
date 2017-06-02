stage ('Build'){
	node('WebGoatNode'){
		def mvnHome
		mvnHome = tool 'M3'
		
		checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CloneOption', depth: 0, noTags: false, reference: '', shallow: false, timeout: 30]], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/tjrodrigues/continuousTesting.git']]])
		
		withSonarQubeEnv('SonarQube') {
			if (isUnix()) {
				sh "'${mvnHome}/bin/mvn' clean install"
			} else {
				bat(/"${mvnHome}\bin\mvn" clean install/)
			}
		}
	}
}
stage('Build'){
	node('master'){
		sh "echo build"
	}
}
stage('Test'){
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
