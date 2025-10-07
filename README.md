# DevOps Task – Automated Node.js Application Deployment on AKS

This repository demonstrates the end-to-end deployment of a Node.js application on Azure Kubernetes Service (AKS) using Terraform, Jenkins, Helm, and Nginx Ingress.

---

## Table of Contents
- [Prerequisites](#prerequisites)  
- [Infrastructure Setup](#infrastructure-setup)  
- [Jenkins Setup](#jenkins-setup)  
- [Node.js Application](#nodejs-application)  
- [Helm Chart Deployment](#helm-chart-deployment)  
- [Nginx Ingress Configuration](#nginx-ingress-configuration)  
- [Accessing the Application](#accessing-the-application)  
- [Monitoring](#monitoring) 

---

## Prerequisites
Before running this project, ensure you have the following installed and configured:
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)  
- Terraform  
- Docker  
- Helm  
- Jenkins server  

Login to your Azure account using:  
```bash
az login
```
## Infrastructure Setup

1. Navigate to the Terraform directory:
```
cd Terraform
```
2. Initialize, plan, and apply the Terraform scripts:
```
terraform init
terraform plan
terraform apply
```

This will provision an Azure Kubernetes Service (AKS) cluster.

## Terraform Sections Explained

- AKS Cluster – Deploys a scalable Kubernetes cluster on Azure.

- Resource Group – Organizes all resources for easier management.

- Networking – Sets up virtual network and subnets for AKS.

- Role Assignments – Ensures proper permissions for AKS to manage resources.


## Jenkins Setup

A VM was manually created on Azure to host Jenkins.

Jenkins was installed along with all necessary prerequisites, including:

- Docker

- Helm

- kubectl

- AZ CLI

A Jenkins pipeline was created to automate the deployment of the Node.js application to AKS.

## Pipeline Stages

- Build – Builds the Docker image of the Node.js app.

- Push – Pushes the Docker image to the container registry.

- Deploy – Uses Helm to deploy the app on AKS.

## Node.js Application

- A simple Node.js application runs on port 8080.

- The Dockerfile is optimized for lightweight builds using Alpine Linux.

- Application responds with a basic message for testing.

## Helm Chart Deployment

- A Helm chart was created to manage the deployment of the Node.js application on AKS.

- Deployment includes a service and deployment configuration.

## Nginx Ingress Configuration

- Nginx Ingress Controller was installed to manage HTTP traffic into the cluster.

- Configured to route external traffic to the Node.js application using a domain.

## Accessing the Application

After the pipeline completes, the Node.js app can be accessed through the configured Nginx domain which is https://nodeapp.devcops.in/.

# Notes

- The domain used is owned by me for learning purposes.

- Jenkins is hosted at https://cicd.devcops.in.

- Let’s Encrypt was used to add HTTPS to the domain.

- GitHub webhooks are configured for the main branch to trigger the pipeline.

- Argo CD can be used for CD deployment, allowing developers limited access to check deployment status. Since this is a minimal setup, Argo CD is not configured.

- Prometheus is installed to monitor cluster metrics.

- Domain for monitoring is configured with https://monitoring.devcops.in

- username: admin
- password: prom-operator

All configurations are set up in a minimal structure; they can be enhanced further based on usage and requirements.

#### This setup demonstrates a complete DevOps pipeline: infrastructure provisioning, CI/CD automation with Jenkins, containerized application deployment, and traffic management using Nginx Ingress.
