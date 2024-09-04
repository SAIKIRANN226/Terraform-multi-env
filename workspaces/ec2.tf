resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb" #devops-practice
  instance_type = lookup(var.instance_type, terraform.workspace) # why we are using lookup function? in a map we can get the value when you pass the key

  tags = {
    Name = "HelloTerraform"
  }
}