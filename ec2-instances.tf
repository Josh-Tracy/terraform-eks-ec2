# Create Servers
resource "aws_instance" "ec2_instances_ue1a" {
  for_each          = var.ec2-instances-ue1a
  ami               = each.value["ami"]
  instance_type     = each.value["instance_type"]
  availability_zone = each.value["availability_zone"]
  key_name          = each.value["key_name"]
  tags              = each.value["tags"]
  associate_public_ip_address = true
  subnet_id = aws_subnet.dev1-subnet.id
  vpc_security_group_ids   = [aws_security_group.allow-web-traffic.id]

}

resource "aws_instance" "ec2_instances_ue1b" {
  for_each          = var.ec2-instances-ue1b
  ami               = each.value["ami"]
  instance_type     = each.value["instance_type"]
  availability_zone = each.value["availability_zone"]
  key_name          = each.value["key_name"]
  tags              = each.value["tags"]
  associate_public_ip_address = true
  subnet_id = aws_subnet.dev2-subnet.id
  vpc_security_group_ids   = [aws_security_group.allow-web-traffic.id]

}