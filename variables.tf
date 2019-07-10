variable "region" {
    default = "us-west-1"
    description = "Main region"
}

variable  "ami"{
    default = "ami-09f4cd7c0b533b081"
}

variable "type"{
    default ="t2.micro" 
}

variable "cidr_block_vpc"{
    default = "10.0.0.0/16"
}

variable "cidr_block_public" {
  default = "10.0.1.0/24"
}
variable "cidr_block_private" {
  default = "0.0.0.0/0"
}
variable "i_from_port" {
    default = "22"
}

variable "i_to_port" {
    default = "22"
}
variable "i_protocol"{
    default = "tcp"
}
variable "i_cidr_block"{
    default = "192.168.0.0/16"
}
variable "e_from_port"{
    default = "0"
}
variable "e_to_port"{
    default = "0"
}
variable "e_protocol"{
    default = "-1"
}
variable "e_cidr_block"{
    default = ["0.0.0.0/0"]
}