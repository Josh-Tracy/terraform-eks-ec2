# Commented out unless needed. Not needed for EKS cluster deployment
# Create Servers
resource "aws_instance" "ec2_instances" {
  for_each          = var.ec2-instances
  ami               = each.value["ami"]
  instance_type     = each.value["instance_type"]
  availability_zone = each.value["availability_zone"]
  key_name          = each.value["key_name"]
  tags              = each.value["tags"]

#  network_interface {
#    device_index         = 0
#    network_interface_id = each.value["network_interface_id"]

#  }
}