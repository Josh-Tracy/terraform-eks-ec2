resource "aws_key_pair" "ec2_keys" {
  for_each   = var.keypairs
  key_name   = each.value["key_name"]
  tags       = each.value["tags"]
  public_key = each.value["public_key"]
}