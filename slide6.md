
layout: false
class:  col-2
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: Generate AWS Creds
count: true

# Infrastructure Automation

```hcl
#!/bin/bash
packer build aws-ubuntu.pkr.hcl
terraform init 
terraform apply
```

Create a script to build & deploy your infrastructure, while leveraging Packer & Terraform

![:scale 95%](./assets/images/Packer-Demo-Result.png) 


???

Scripts are commonly used to automate the creation of infrastructure by IT organizations. Here's an example of how to create a script and successfully building and AWS AMI & Ec2 resource. 

