provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "kube-master" {
  ami           = "ami-0a7d80731ae1b2435"
  instance_type = "t2.medium"
  key_name      = "newkey"
  tags = {
    Name = "kube-master"
  }
}

resource "aws_instance" "kube-slave1" {
  ami           = "ami-0a7d80731ae1b2435"
  instance_type = "t2.medium"
  key_name      = "newkey"
  tags = {
    Name = "kube-slave1"
  }
}

resource "aws_instance" "kube-slave2" {
  ami           = "ami-0a7d80731ae1b2435"
  instance_type = "t2.medium"
  key_name      = "newkey"
  tags = {
    Name = "kube-slave2"
  }
}

