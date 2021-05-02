node {
	def app
	stage('Scm checkout'){
		checkout scm
		}
	stage('Build Image'){
	app=docker.build("svsaket/newphp2")
	}
	stage("Test Image"){
	app.inside{
	echo "app is build"}
	}
	stage("Push Image"){
	docker.WithRegistry('https://registry.hub.docker.com','Dockerapp')
	{
	app.push("latest")
	}
	echo "trying to push"
	}
	
	}
	
	
