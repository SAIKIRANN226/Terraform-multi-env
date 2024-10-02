variable "instance_names" {
  type = map
#   default = {
#     mongodb = "t3.small"
#     redis = "t2.micro"
#     mysql = "t3.small"
#   } created only few to save time
}

variable "zone_id" {
  default = "Z104317737D96UJVA7NEF"
}

variable "domain_name" {
  default = "daws76s.online"
}


# All these variables are default and now i need seperate variables for dev and prod so created two   folders ----> dev.tfvars/prod.tfvars

# We have environment selection in the jenkins in the dropdown we can use future sessions