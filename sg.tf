#create security group

resource "aws_security_group" "sg" {
  name        = "sg_jenkins"
  description = "allow traffic on port 8080"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description      = "22 for ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
   ingress {
    description      = "8080 for jenkins"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "sg_jenkins"
    Team = "Devops"
    owner = "alex"
  }
}
  