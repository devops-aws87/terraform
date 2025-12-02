resource "aws_instance" "frontend1" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = [
      "sg-056bd46848ffb08a9"
    ]

  tags = {
    Name = "frontend1"
  }
}
resource "aws_route53_record" "www" {
    zone_id= "Z018624414H1YR1TZOP35"
    name = "test"
    type = "A"
    ttl = "300"
    records = [aws_instance.frontend.private_ip]
    }
