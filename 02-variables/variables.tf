variable "ami_id" {
  type        = string
  default     = "ami-0055977a6e828a4f4"
  description = "AMI id of the EC2 instance"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "EC2  instance type"
}

variable "ec2_tags" {
  type        = map
  default     = {
    Name = "roboshop-mangodb"
    Environment = "Dev"
    Terraform = "True"
    Project = "roboshop"
    Component = "roboshop"
  }
  
}

variable "cidr" {
  type        = list
  default     = ["0.0.0.0/0"]
  
}

variable "from_port" {
  type        = number
  default     = 0
  
}