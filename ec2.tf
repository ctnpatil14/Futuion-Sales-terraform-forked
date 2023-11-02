resource "aws_instance" "web"{
  ami           = "ami-0a7cf821b91bcccbc"
  instance_type = "t2.micro"

  tags = {
    Name = "ec2-ubuntu"
  }
  user_data = file("ubuntu.sh")
}

