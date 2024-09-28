resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb" #devops-practice
  instance_type = lookup(var.instance_type, terraform.workspace) 

  tags = {
    Name = "HelloTerraform"
  }
}

# line 3 ---> When you are using terraform it has default variable that is "terraform.workspace",so if you are in dev then the value of "terraform.workspace will automatically becomes dev",if you are in prod then the value of "terraform.workspace will automatically becomes prod".so you need to write lookup function this function works as if you pass key we can get that value.for example 

# lookup(map, key) ---> giving input as map and passing the key
# lookup(var.instance_type, terraform.workspace) ---> 1st one is map and another is key