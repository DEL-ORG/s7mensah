packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  ami_name      = "ubuntu-22.04-s7mensah"
  instance_type = "t2.micro"
  region        = "us-east-1"

  source_ami_filter {
    filters = {
      virtualization-type = "hvm"
      name                = "ubuntu/images/*ubuntu-jammy-22.04-amd64-server-*"
      root-device-type    = "ebs"
    }
    owners      = ["099720109477"]
    most_recent = true
  }
  ssh_username = "ubuntu"
}

build {
  name    = "ubuntu-22.04-s7mensah"
  sources = ["source.amazon-ebs.ubuntu"]

  provisioner "shell-local" {
    #scripts          = ["./package.sh"]

    scripts          = ["/student_home/pack/package.sh"]


    }

}

###AWS CREDENTIALS NEEDED can create a shared file at Shared credentials 
##(~/.aws/credentials) and specify the AWS access keys there
##export AWS_ACCESS_KEY_ID=your_access_key_id
##export AWS_SECRET_ACCESS_KEY=your_secret_access_key



