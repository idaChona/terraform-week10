resource "aws_instance" "ec2-one" {
  ami                    = "ami-0fa1ca9559f1892ec"
  vpc_security_group_ids = [aws_security_group.ec2.id]
  instance_type          = "t2.micro"
  #key_name = ""
  subnet_id = aws_subnet.private_subnet1.id
  user_data = file("userdata.sh")
  tags={
    Name = "webserver1"
  }

}

resource "aws_instance" "ec2-two" {
  ami                    = "ami-0fa1ca9559f1892ec"
  vpc_security_group_ids = [aws_security_group.ec2.id]
  subnet_id              = aws_subnet.private_subnet2.id
  user_data = file("userdata.sh")
  #key_name = ""
  instance_type = "t2.micro"
  tags={
     Name="webserver2"
  }
 

}