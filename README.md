# DevOps Pipeline Project

# DevOps Lifecycle Project for Analytics Pvt Ltd

## 📘 Project Description

This project implements a complete DevOps lifecycle for **Analytics Pvt Ltd**, a product-based company moving from a monolithic to a containerized architecture using Docker and Kubernetes. The company is scaling rapidly and needs a robust CI/CD pipeline, automated infrastructure provisioning, and configuration management.

The base application code is sourced from: [https://github.com/hshar/website.git](https://github.com/hshar/website.git)

## 📋 Problem Statement

> **You are hired as a DevOps Engineer for Analytics Pvt Ltd.** This company is a product-based organization that uses Docker for their containerization needs. The final product received a lot of traction in the first few weeks of launch. With the increasing demand, the organization requires a platform to automate deployment, scaling, and operations of application containers across clusters of hosts.
>
> As a DevOps Engineer, your job is to implement a complete DevOps lifecycle with the following requirements:

## 🧾 Project Requirements

### 1. Git Workflow

* Use Git for version control.
* Release deployments should be scheduled for the **25th of every month**.

### 2. CodeBuild Integration

* Automatically trigger **AWS CodeBuild** when code is pushed to the `master` branch.

### 3. Docker Containerization

* Containerize the app using a custom `Dockerfile`.
* Automatically build the Docker image on every push to GitHub.

### 4. Kubernetes Deployment

* Use a **Kubernetes cluster** in production.
* Pull the Docker image from **DockerHub**.
* Deploy with **2 replicas**.
* Use a **NodePort** service exposing the app on **port 30008**.

### 5. Jenkins CI/CD Pipeline

* Create a full **Jenkins Pipeline** to:

  * Clone the repo
  * Build the Docker image
  * Push it to DockerHub
  * Deploy it to Kubernetes

### 6. Configuration Management

* Automate setup and configuration of servers (e.g., Jenkins, Docker, Kubernetes, etc.) using a configuration management tool (like Ansible or shell scripts).

### 7. Infrastructure as Code (IaC)

* Use **Terraform** to provision:

  * VPC, subnets
  * EC2 instances (e.g., Jenkins, master, slaves)
  * Security Groups, IAM roles
  * Any other AWS infrastructure needed

## 🏗️ Project Structure

devops-pipeline-project/
├── Dockerfile
├── index.html
├── Jenkinsfile
├── Deployment.yaml
├── Service.yaml
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── ansible/
│   ├── hosts
│   ├── playbooks.yaml
│   ├── localhost.sh
│   ├── master.sh
│   └── slaves.sh
└── README.md


## 🚀 Project Objectives

1. **Version Control**:  
   - Git workflow implemented.  
   - Releases scheduled for the 25th of every month.

2. **Continuous Integration**:  
   - GitHub → Jenkins triggers on every `master` branch commit.

3. **Containerization**:  
   - Docker used to containerize the app using a custom Dockerfile.  
   - Image built and pushed to [Docker Hub](https://hub.docker.com/repository/docker/nishant1784/devops-project2).

4. **Continuous Deployment**:  
   - Kubernetes cluster runs the container with 2 replicas.  
   - Exposed using a **NodePort** service on port **30008**.

5. **Infrastructure as Code**:  
   - Terraform used to provision AWS EC2 instances:  
     - 1 Master  
     - 2 Slaves

6. **Configuration Management**:  
   - Ansible used to install Docker, Java, Kubernetes components on all nodes.

---

## 🛠️ Tools & Technologies

| Tool        | Purpose                          |
|-------------|----------------------------------|
| GitHub      | Version control                  |
| Jenkins     | CI/CD pipeline                   |
| Docker      | Containerization                 |
| Kubernetes  | Container orchestration          |
| Terraform   | Infrastructure provisioning      |
| Ansible     | Configuration management         |
| AWS         | Cloud infrastructure (EC2)       |
| Ubuntu 24.04| OS used in all EC2 instances     |

---


