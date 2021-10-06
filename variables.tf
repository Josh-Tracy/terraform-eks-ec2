variable "ec2-instances" {
  description = "Map instances to configurations"
  type = map(object({
    instance_type     = string
    environment       = string
    availability_zone = string
    key_name          = string
    ami               = string
    tags              = map(string)
  }))
  default = {
    "ubuntu-dev-server" = {
      availability_zone = "us-east-1a",
      environment       = "dev",
      instance_type     = "t3.medium",
      key_name          = "ubuntu-dev-key",
      ami               = "ami-087c17d1fe0178315",
      tags = {
        "Name" = "ec2_ue1a_ubuntu_dev"
      }
      },
     "redhat-dev-server" = {
       availability_zone = "us-east-1b",
       environment       = "dev",
       instance_type     = "t2.medium",
       key_name          = "redhat-dev-key",
       ami               = "ami-0004e2daf027e97ab",
       tags = {
         "Name" = "ec2_ue1b_redhat_dev"
        }
    }
  }
}

variable "keypairs" {
  description = "keypairs for ec2 instances"
  type = map(object({
    key_name = string
    tags     = map(string)
  }))
  default = {
    "ubuntu-dev-key" = {
      key_name = "ubuntu-dev-key",
      tags = {
        "Name" = "ubuntu-dev-key"
      },
    }
    "redhat-dev-key" = {
      key_name = "redhat-dev-key",
      tags = {
        "Name" = "redhat-dev-key"
        }
      }
    }
  }
