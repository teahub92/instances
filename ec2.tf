provider "aws" {
  region     = "ap-south-1"  # Specify the region
}
resource "aws_instance" "ec2" {
    count = 4
    ami = "ami-08718895af4dfa033"
    instance_type = "t2.micro"
  
  tags = {
    Name = "public-ec2"
}
}