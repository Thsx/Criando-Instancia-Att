provider "aws" {
region      = "${var.region}"
}
resource "aws_instance" "Teste" {
  ami = "${var.ami}"
  instance_type = "${var.type}"
  }
  resource "aws_vpc" "Teste_Vpc" {
  cidr_block = "${var.cidr_block_vpc}"
}
resource "aws_subnet" "Public" {
  vpc_id     = "${aws_vpc.Teste_Vpc.id}"
  cidr_block = "${var.cidr_block_public}"

  tags = {
    Name = "Public"
  }
}
resource "aws_subnet" "Private" {
  vpc_id     = "${aws_vpc.Teste_Vpc.id}"
  cidr_block = "${var.cidr_block_private}"

  tags = {
    Name = "Private"
  }
}
resource "aws_security_group" "teste" {
  name        = "Security Teste"
  description = "Teste"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    
    from_port   = "${var.i_from_port}"
    to_port     = "${var.i_to_port}"
    protocol    = "${var.i_protocol}"
    cidr_blocks = "${var.i_cidr_block}"
  }

  egress {
    from_port       = "${var.e_from_port}"
    to_port         = "${var.e_to_port}"
    protocol        = "${var.e_protocol}"
    cidr_blocks     = "${var.e_cidr_block}"
    
  }
}