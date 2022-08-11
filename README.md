# CI/CD Deploy Jenkins on Google Kubernetes Engine (GKE)

Building an application using Jenkins pipeline on GCP Google Kubernetes Engine GKE using the following:

* Build a google cloud architecture for appling this jenkins and on private GCP GKE Cluster using terraform
* Create Jenkins Dockerfile with docker and kubectl installed and upload it to dockerhub registery
* Setup a Jenkins Deployment inside GKE cluster and set the requirements in order to make jenkins build deployments inside the GKE Cluster
* Build a Dockerfile for the application and upload it to GCP container registery service
* Deploy the application using Kubernetes deployment and services inside Jenkinsfile build
