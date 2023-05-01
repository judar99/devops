pipeline {
    agent any

    stages {
        stage('Descargar código fuente') {
            steps {
                echo 'Descargando código fuente...'
                git branch: 'main', url: 'https://github.com/judar99/devops.git'
            }
        }

        stage('Construir imagen de Docker') {
            steps {
                echo 'Construyendo imagen de Docker...'
                bat 'docker build -t devops .'
            }
        }

        stage('Desplegar contenedor de Docker') {
            steps {
                echo 'Desplegando contenedor de Docker...'
                bat 'docker run -p 8080:8081 -d devops'
            }
        }
    }
}