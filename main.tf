resource "aws_instance" "server1" {
  ami           = "ami-00e801948462f718a"
  instance_type = var.instance_type
  subnet_id     = data.terraform_remote_state.vpc.outputs.public_subnet_ids[0]
}

