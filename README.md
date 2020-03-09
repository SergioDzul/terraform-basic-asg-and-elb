# Terraform module for basic EC2

## Overview
The next module prented to be used as a basic infraestructure to deploy basic websites. I pretent to create another modules for specific technologies. 

## prerequisites
You need the terraform CLI installed and the AWS CLI with their config files.

## Deploy
First you need to install the provider.
```
terraform init
```

To check the elemenets to create use:
```
terraform plan
```

Deploy in the AWS use:

```
terraform applay
```

Remove all elementes with:
```
terraform remove
```