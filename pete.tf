#################################
##			Variables		   ##
#################################
variable "access_key" {}
variable "secret_key" {
	type = string
}

#################################
##			Provider		   ##
#################################
provider "aws" {
	region = "eu-west-2"
	access_key = "${var.access_key}"
	secret_key = "${var.secret_key}"
}

resource "aws_instance" "instance_7" {
  ami           = "ami-0ad8ecac8af5fc52b"
  instance_type = "t2.micro"
}
