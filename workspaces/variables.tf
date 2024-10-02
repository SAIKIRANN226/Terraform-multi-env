variable "instance_type" {
  default = {
    dev = "t2.micro"  # if you are in dev then t2.micro
    prod = "t3.small" # if you are in prod then t3.small
  }
}