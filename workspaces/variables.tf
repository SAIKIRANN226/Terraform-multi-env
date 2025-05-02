variable "instance_type" {
  default = {
    dev = "t2.micro"  # If you are in dev then value becomes t2.micro
    prod = "t3.small" # If you are in prod then value becomes t3.small
  }
}