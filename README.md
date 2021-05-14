# Provisioning of ec2-instance and Amazon's EBS Volume to deploy webserver with the help of Terraform
## Prerequisites
Make sure you have installed all of the following prerequisites on your development machine:
- Git - [Download & Install Git](https://git-scm.com/downloads). OSX and Linux machines typically have this already installed
- Terraform - [Download & Install Terraform](https://www.terraform.io/downloads.html)
- AWS CLI - [Download & Install AWS-CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html#cliv2-windows-install)
After that clone the repo as:
```
git clone https://github.com/geekgodgagan/ec2-aws-terraform.git
```
Now, login to AWS CLI to make profiles as:
```
aws configure
```
Now, initialise the terraform repository as:
```
terraform init
```
change the path and name of your private key to ssh login to instance from the [ec2.tf](https://github.com/geekgodgagan/ec2-aws-terraform/blob/master/ec2.tf) and [software_configuration.tf](https://github.com/geekgodgagan/ec2-aws-terraform/blob/master/software_configuration.tf) files as:
```
key_name = "your Key name"
private_key = file("your key path")
```
Finally apply the terraform script to provision the OS on the top of AWS cloud as:
```
terraform apply
```
