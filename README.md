# AWS-CodePipeline-EC2-deploy
<img width="1003" height="636" alt="image" src="https://github.com/user-attachments/assets/fef74014-2021-4120-918c-0d1e9aa2133b" />

## Overview
Automated CI/CD pipeline deploying application code from GitHub to an Amazon EC2 instance using AWS CodePipeline and AWS Systems Manager (SSM).

---

## Architecture
**Flow:** GitHub → AWS CodePipeline → AWS Systems Manager (SSM) → Amazon EC2

---

## Components

### GitHub
- Hosts application source code  
- Triggers pipeline on commits  

### AWS CodePipeline
- Orchestrates CI/CD workflow  
- Uses IAM service role  

### AWS Systems Manager (SSM)
- Transfers files to EC2  
- Executes post-deployment scripts  
- Targets instances via tags  

### Amazon EC2
- Runs Apache (httpd)  
- Deployment path: `/var/www/html`  
- IAM role with SSM permissions  

---

## Key Features
✔ Automated deployment on commit  
✔ No SSH access required  
✔ Tag-based instance targeting  
✔ Secure IAM & SSM integration  

---

## Prerequisites
- AWS Account  
- GitHub Repository  
- EC2 instance with SSM Agent  
- IAM roles configured  
- CodePipeline setup  

---

## Deployment Flow
1. Push code to GitHub  
2. Pipeline triggers automatically  
3. SSM deploys files to EC2  
4. Files copied to `/var/www/html`  
5. Post-deployment script runs  

---

## Required IAM Permissions

**EC2 Instance Role:**  
- AmazonSSMManagedInstanceCore  

**CodePipeline Service Role:**  
- Access to SSM  
- Access to EC2 (describe/tag filtering)  
- Access to GitHub connection  

---

## Sample Post-Deployment Script
script.sh
