variable "ami" {
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_security_group_ids" {
  default = [ "sg-056bd46848ffb08a9" ]
}

variable "zone_id" {
  default = "Z057881017RC0RRKVUX8E"
}

variable "components" {
  default = {
    frontend = ""
    mongodb = ""
    mysql = ""
    rabbitmq = ""
    redis = ""
    catalogue = ""
    cart = ""
    user = ""
    shipping = ""
    payment = ""
  }
}