resource "aws_instance" "roboshop-mangodb" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.roboshop-common.id]

  tags =  var.ec2_tags
  
}


resource "aws_security_group" "roboshop-common" {
  name        = "roboshop-common"
  description = "Allow TLS inbound traffic and all outbound traffic"
   
  
  ingress {
    from_port        = var.from_port
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr
    
  }

  egress {
    from_port        = var.from_port
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr
    
  }


  tags = {
    Name = "roboshop-common"
  }
}