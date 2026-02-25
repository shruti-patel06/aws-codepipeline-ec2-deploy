# aws-codepipeline-ec2-deploy
<img width="1003" height="636" alt="image" src="https://github.com/user-attachments/assets/fef74014-2021-4120-918c-0d1e9aa2133b" />
Overview

Automated CI/CD pipeline deploying code from GitHub to an Amazon EC2 instance using AWS CodePipeline and AWS Systems Manager (SSM).

Architecture

Flow: GitHub → CodePipeline → SSM → EC2

Components

GitHub

Hosts application code

Triggers pipeline on commits

AWS CodePipeline

Orchestrates deployment

Uses IAM service role

AWS Systems Manager (SSM)

Transfers files to EC2

Executes post-deployment scripts

Targets instances via tags

Amazon EC2

Runs Apache (httpd)

Deployment path: /var/www/html

IAM role with SSM permissions

Key Features

✔ Auto deployment on commit
✔ No SSH required
✔ Tag-based targeting
✔ Secure IAM & SSM integration

Prerequisites

AWS Account

GitHub Repository

EC2 with SSM Agent

IAM roles configured

CodePipeline setup

Deployment Flow

Push code to GitHub

Pipeline triggers

SSM deploys to EC2

Files copied to /var/www/html

Post-deployment script runs

Required IAM

EC2 Role:
AmazonSSMManagedInstanceCore

Pipeline Role:
SSM + EC2 + GitHub access
