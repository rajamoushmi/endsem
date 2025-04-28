# main.tf

provider "aws" {
  region = "us-east-1"   # You can change the region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Example AMI (Amazon Linux 2 for us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
