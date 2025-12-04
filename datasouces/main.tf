data "aws_ami" "example" {

  filter {
    name = "name"
    values = ["ami-09c813fb71547fc4f"]
  }
  owners = [973714476881]
}

output "amioutput" {
  value = "data.aws_ami.example"
}

provider "aws" {
  region = "us-east-1"
}
