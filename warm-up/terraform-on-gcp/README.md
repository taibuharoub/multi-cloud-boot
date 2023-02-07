# Hands-On with Terraform on Google Cloud

TIP:

Top skill when using Terraform 

> To understand the requirement and how you can translate that requirement into a configuration that can be deployed in the cloud environment in a fully automated and repeatable way


Misson 

> We will look at an architecture and understand the requirements, and then create configuration files to provision this architecture using terraform in a fully automated way

Requirements

- Deploy two resources in a specific region (us-east4)
- Create configuration files for Terraform to provision one Kubernetes Cluster using Google Kubernetes Engine
- Provision a Google Cloud SQL - which is a service that allows us to provision databases on on google cloud (will use Google Vloud Sql)

Commands

1- Upload files to Cloud Shell

2- Run terraform commands to start provisioning

```bash
$terraform init
$terraform plan
$terraform apply
```
Tip: Also enable the containers API

```bash
$gcloud services enable container.googleapis.com
```
3- Run terraform command to destroy it

```bash
$terraform destroy
```