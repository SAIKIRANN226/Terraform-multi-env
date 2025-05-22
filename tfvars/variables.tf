variable "instance_names" {
  type = map
#   default = {
#     mongodb = "t3.small"
#     redis = "t2.micro"
#     mysql = "t3.small"
#     web = "t2.micro"
  }
  
  # Created only few to save time while applying or destroying, and if we comment lines from 3 to 7 ? this is because just to test if we commented, obviously terraform will ask for the prompt then we will know that we missed to give tfvar-file, otherwise it will take default variables but now we commented variables so it will ask for the prompt. 

variable "zone_id" {
  default = "Z104317737D96UJVA7NEF"
}

variable "domain_name" {
  default = "daws76s.online"
}


# All these variables are default and now i need seperate variables for dev and prod, so created two   folders ----> dev.tfvars/prod.tfvars in dev and prod.tfvras in prod folders

# We have environment selection in the jenkins in the dropdown we can use in future sessions