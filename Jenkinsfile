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
