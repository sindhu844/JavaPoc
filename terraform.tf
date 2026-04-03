provider "aws"{
region = "us-east-1"
}

resource "aws_instance" "server_2"{
ami = "ami-0ec10929233384c7f"
instance_type = "t2.micro"
tags = {
Name = "server2"
}
}
