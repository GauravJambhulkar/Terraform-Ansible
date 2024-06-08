# Terraform-Ansible
This repository contains a Terraform script to automate the creation of an Ubuntu EC2 instance on AWS, install Ansible on it, and verify the installation via SSH

# Terraform Script to Create Ubuntu EC2 Instance with Ansible Installation

This repository contains a Terraform script to automate the creation of an Ubuntu EC2 instance on AWS, install Ansible on it, and verify the installation via SSH.

## Features

- **AWS EC2 Instance**: Creates an Ubuntu EC2 instance.
- **SSH Key Pair**: Generates an SSH key pair for secure access.
- **Security Group**: Configures a security group to allow SSH access.
- **User Data Script**: Automatically installs Ansible on the instance.
- **Verification**: Verifies the Ansible installation via SSH.

## Getting Started

### Prerequisites

- **Terraform**: Ensure Terraform is installed. [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli).
- **AWS CLI**: Ensure AWS CLI is installed and configured with the necessary permissions. [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).
- **SSH Key Pair**: Ensure you have an SSH key pair (`~/.ssh/id_rsa` and `~/.ssh/id_rsa.pub`). Generate one using `ssh-keygen` if you don't have it.

### Usage

1. **Clone the Repository**:
    ```sh
    git clone https://github.com/GauravJambhulkar/Terraform-Ansible.git
    cd terraform-ansible
    ```

2. **Initialize Terraform**:
    ```sh
    terraform init
    ```

3. **Apply the Configuration**:
    ```sh
    terraform apply -auto-approve
    ```
    Review the plan output and confirm to apply the changes.

### Outputs

- **Instance ID**: The ID of the created EC2 instance.
- **Public IP**: The public IP address of the created EC2 instance.
- **Key Name**: The name of the SSH key pair used.

---

This repository is a simple example of using Terraform to automate the provisioning of infrastructure and software installation on AWS. Happy Terraforming!
