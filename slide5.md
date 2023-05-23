
layout: false
class: col-2
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: Configuration
count: true
layout: false

#  Configuring AWS Resources in Terraform

```hcl
data "aws_ami" "image" {
  most_recent = true
  filter {
    name   = "tag:AMI"
    values = ["packer-demo"]
  }
}

resource "aws_instance" "myec2" {
  ami = data.aws_ami.image.id
  instance_type = "t2.micro"
}
```
Reference your image in the `main.tf` file by filtering for the tag given to the AMI image created by Packer _(i.e. AMI=packer-demo)_

Use the `aws_ami` data source when creating your ec2 instance

???

The next step is to add your AWS access keys to Vault. This is necessary to use them dynamically later. Here's an example of how to add your AWS access keys to Vault using Terraform:
