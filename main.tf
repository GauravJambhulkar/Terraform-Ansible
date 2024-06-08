provider "aws" {
  region = "us-east-1" # Replace with your desired AWS region
}

# data "security_groups" "default" {
#     name = "sg-0567310ecd795caad"
# }
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "foo" {
  ami           = "ami-04b70fa74e45c3917" # Ubuntu 22.04 LTS AMI in us-west-2
  instance_type = "t2.micro"
  key_name = "KeyPair"
#   vpc_security_group_ids = "sg-0567310ecd795caad"
#   vpc_security_group_ids = [data.security_groups.default.id]
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]


  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y software-properties-common
              apt-add-repository --yes --update ppa:ansible/ansible
              apt-get install -y ansible
              EOF


  tags = {
    Name = "Ubuntu-Ansible"
  }
}