resource "aws_instance" "jenkins_server" {

  ami           = "ami-098e39bafa7e7303d"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.public1.id

  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]

  key_name = "Project_key"

  associate_public_ip_address = true

  tags = {
    Name = "Jenkins-Server"
  }
}