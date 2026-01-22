# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-07ff6238b8c7116"
  instance_type = "t2.micro"
  
  tags {
    Name = "terraform-example"
  }
}