# Toolkit of the Multi-cloud and DevOps Professional

What is multi-cloud?

Use of multiple public cloud services from different vendors/providers within one architecture at the same time.

What is DevOps?

Basically is set of tools and practices that companies use to deliver their applications to end users in a much more efficient and optimized way.

Most common use cases when working with cloud projects

- Infrastructure Provisioning (top tool - Terraform)
- Environment Configuration (tool - Ansible - is a configuration mg't tool that allows you to do all the configuration steps in a fully automated way.)
- Application Delivery Format (tool - Docker)
- Application Orchestration (tool - Kubernetes is a container orchestration tool)
  
IaC - Infrastructure as Code

is basically a way that you can provision infrastructure in a multi-cloud environment in a fully automated way and at scale.

Commands:

Ansible
```bash
$ansible-playbook -i hosts install-apache.yaml
```

where:

- hosts - is a hosts file containing servers to connect to 
- install-apache.yaml - is the playbook, set of tasks that ansible will use to automate

Tip:
The proper way that you should learn multi-cloud and DevOps technologies is:

- You need to know very well the building blocks of the cloud providers
- Learn and understand the core services of each cloud provider

## The Toolkit

Helps figure out answers for the questions regarding the project requirements

The toolkit is divided into:

- Documentation - documentation of the multi-cloud environment eg AWS, GCP etc and of the documentation of the DevOps tools eg Docker, Terraform Ansible etc
- Productivity Tools - helps you work with these technologies

### Multi-Cloud Toolkit

AWS Documentation [AWS](https://docs.aws.amazon.com/)

Microsoft Azure Documentation [Azure](https://learn.microsoft.com/en-us/azure/?product=popular)

Google Cloud Documentation [GCP](https://cloud.google.com/docs)

Oracle Cloud Infrastructure Documentation [OCL](https://docs.oracle.com/en-us/iaas/Content/home.htm)

Services Comparison 

GCP vs AWS vs Azure [Compare](https://learn.microsoft.com/en-us/azure/architecture/aws-professional/services)

OCI vs All [Compare](https://www.oracle.com/cloud/service-comparison/)


### DevOps Toolkit

Ansible

[Core](https://docs.ansible.com/ansible-core/devel/index.html)

[Collection](https://docs.ansible.com/ansible/latest/collections/index.html)

Terraform 

[AWS](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

[Azure](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)

[GCP](https://registry.terraform.io/providers/hashicorp/google/latest/docs)

[Oracle](https://registry.terraform.io/providers/oracle/oci/latest)

Kubernetes

[Cheat sheet - EN](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)

[Cheat sheet - PT](https://kubernetes.io/pt-br/docs/reference/kubectl/cheatsheet/)

Docker

[Docs Portal](https://docs.docker.com/)