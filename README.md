# Trend App Deployment - DevOps Project

##  Project Overview
This project automates the CI/CD pipeline for a React app using Jenkins, Docker, Terraform, and Kubernetes on AWS.

---

## Project Structure

- `Dockerfile`: Builds the static site
- `k8s/`: Kubernetes manifests for deployment and service
- `Jenkinsfile`: Jenkins pipeline script
- `dist/`: React build files
- `.gitignore`, `README.md`, etc.

---

##  CI/CD Pipeline Explanation

1. **Clone Repo:** Pull code from GitHub.
2. **Build Docker Image:** Using `Dockerfile` with `dist/` contents.
3. **Push to DockerHub:** Uploads image.
4. **Deploy to EKS:** Uses `kubectl apply` to deploy manifests.
5. **Result:** App runs on Kubernetes LoadBalancer.

---

## Setup Instructions

1. **Clone Repo:**

```bash
git clone https://github.com/gokul20dev/Trend-app.git
cd Trend-app
