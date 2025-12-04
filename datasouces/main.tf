data "aws_ami" "example" {

  filter {
    name = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }
  owners = [973714476881]
}

data "aws_security_groups" "test" {
  filter {
    name   = "group-name"
    values = ["Allow-all"]
  }

}
#output "securityout" {
#value = data.aws_security_groups.test
#}
#output "amioutput" {
 # value = data.aws_ami.example
#}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance" {
  ami = data.aws_ami.example.image_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_security_groups.test.id]
}