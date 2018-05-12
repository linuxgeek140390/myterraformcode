provider "aws" {
  region = "ap-south-1"
}




terraform {
  backend "s3" {
    bucket = "myterraformbucket1"
    key    = "terraform.tfstate"
    region = "ap-south-1" 
  }
}


resource "aws_security_group" "custom_port" {
  name        = "custom_port"
  description = "Allow custom app port"

  ingress {
    from_port   = 22022
    to_port     = 22022
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "custom_port"
  }
}

resource "aws_security_group" "allow_port_8080" {
  name        = "allow_port_8080"
  description = "Allow custom app port 8080"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "custom_port_8080"
  }
}




resource "aws_security_group" "custom_port_4444" {
  name        = "custom_port"
  description = "Allow custom app port"

  ingress {
    from_port   = 4444
    to_port     = 4444
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "custom_port_4444"
  }
}


