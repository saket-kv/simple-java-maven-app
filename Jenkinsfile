node {
	def app
	stage('Scm checkout'){
		checkout scm
		}
	stage('Build Image'){

sh "./deliver.sh"
	app=docker.build("svsaket/newphp2")
	}
	stage("Test Image"){
	app.inside{
	echo "app is build"}
	}
	stage("Push Image"){
	docker.withRegistry('https://registry.hub.docker.com','jenkins-docker')
	{
		app.push("${env.BUILD_NUMBER}")
	app.push("latest")
		
	}
	echo "trying to push"
	}
	
	}
	
	
