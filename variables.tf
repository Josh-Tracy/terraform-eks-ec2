variable "ec2-instances-ue1a" {
  description = "Map instances to configurations"
  type = map(object({
    instance_type     = string
    environment       = string
    availability_zone = string
    key_name          = string
    ami               = string
    private_ips       = set(string)
    associate_with_private_ip = string
    tags              = map(string)
  }))
  default = {
    "ubuntu-dev-server" = {
      availability_zone = "us-east-1a",
      environment       = "dev",
      instance_type     = "t3.medium",
      key_name          = "ubuntu-dev-key",
      ami               = "ami-087c17d1fe0178315",
      private_ips       = ["10.0.1.50"],
      associate_with_private_ip = "10.0.1.50",
      tags = {
        "Name" = "ec2_ue1a_ubuntu_dev"
      }
      },
     "redhat-dev-server" = {
       availability_zone = "us-east-1a",
       environment       = "dev",
       instance_type     = "t2.medium",
       key_name          = "redhat-dev-key",
       ami               = "ami-0b0af3577fe5e3532",
       private_ips       = ["10.0.1.51"],
       associate_with_private_ip = "10.0.1.50",
       tags = {
         "Name" = "ec2_ue1a_redhat_dev"
        }
    }
  }
}

variable "ec2-instances-ue1b" {
  description = "Map instances to configurations"
  type = map(object({
    instance_type     = string
    environment       = string
    availability_zone = string
    key_name          = string
    ami               = string
    private_ips       = set(string)
    associate_with_private_ip = string
    tags              = map(string)
  }))
  default = {
    "ubuntu-dev-server" = {
      availability_zone = "us-east-1b",
      environment       = "dev",
      instance_type     = "t3.medium",
      key_name          = "ubuntu-dev-key",
      ami               = "ami-087c17d1fe0178315",
      private_ips       = ["10.0.2.50"],
      associate_with_private_ip = "10.0.2.50",
      tags = {
        "Name" = "ec2_ue1b_ubuntu_dev"
      }
      },
     "redhat-dev-server" = {
       availability_zone = "us-east-1b",
       environment       = "dev",
       instance_type     = "t2.medium",
       key_name          = "redhat-dev-key",
       ami               = "ami-0b0af3577fe5e3532",
       private_ips       = ["10.0.2.51"],
       associate_with_private_ip = "10.0.2.50",
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
    public_key = string
    tags     = map(string)
  }))
  default = {
    "ubuntu-dev-key" = {
      key_name = "ubuntu-dev-key",
      public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOTMJkBnlxhsdgU7k4gQOUw9IZjdS45k0Y51J9CyjhFIRcnCOq7s9JKeOCUf2RBSCs7IvTRS77g+5fiVYq0hgqlvA4UqVqYOjPOUgq1f74y7UwytB3GAk8/0UJrAav8H1DIwtDrI3xg3+u2Kj00kUmtkZubY/vkqZIwIBh0NZBkF2vxTYgJ9waePA4c7HSVMQYg3gEFJFVrXutXLApg4EOD5g97HOjBKS+JeW06bjQqRGh+ZgPz6VSUew4zPIwIu8cIvs21w2/9kFNwUuATVmj4m2rA/0cPxeATefG93y8nRXX0aXpRnm3GuKggUyd+HlQPXeELL14YIF6TrauYjLgKfDDDmRINThmiNMvlnxRVwxsKbwoQotQE18TaEJGf+GotfBSSjH9FXghGzTkuXSkoR4v4Aq97TlqFp2Ohm7Tm3vizLhN5fh/VW4Tag0M+rV3WyuV3NDtlJOS0TNaEPpO9wHrmaPgdDrWTvom0HDElfHBsM6h4VIEOFpYDdqXxo0= professorhojo@shinra",
      tags = {
        "Name" = "ubuntu-dev-key"
      },
    }
    "redhat-dev-key" = {
      key_name = "redhat-dev-key",
      public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCvKe4nQLItRV+w1dmQIS/+Ttaf2ApDTy6LFfG9vBzvyDUQP2h8YvJ1U0EaS8mnu2RACUK2+vQFNiMSWQLJb49ED7nOFfUI7xl+P8561jd9OXo6fQpg8t5Ang1CDtMf3gx2qVwJMvmxruAwIxjOSz9RHjIbr6A6pFhfJKRMVyjGMCECo6LfNuspt2HgEfTbX/6CkVuUv8W0EvOcRm5Mk7gGP1JwAQ9KBw8XaIuTTbcvsVt+dWp5ltiCn3GxEfZpSPM8ual0TLTHpuAiglm9a0qie8YWrZ7g/PgmjujGNSOfH9NKz6QKY90OcaqB+zFr3qyw3R52KA51lwHa1AkOI958OcyFIBG8+pQPSncUCtxRQ4ve86YIlL3DgmK98TQV925eMWANOs2KFyLzD82lv++C8MD23MQtr9uNvGLdUeYTwrF3PIehbEMlBQsyf7cQm45n93z07soiQqmA5ca4QQqWmegouaaCPrA2I0D5MzX+7jus539bDnycjqA/iBjYXLc= professorhojo@shinra",
      tags = {
        "Name" = "redhat-dev-key"
        }
      }
    }
  }
