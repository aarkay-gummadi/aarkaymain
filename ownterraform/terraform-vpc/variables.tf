variable "region" {
  type    = string
  default = "us-west-2"
}

variable "vpc_cidr_block" {
  type        = string
  description = "(optional) describe your variable"
  default     = "192.168.0.0/16"
}

# Give me 5 mins
variable "subnet_info" {
  type = object({
    names               = list(string)
    public_subnet_names = list(string)
  })
  default = {
    names               = ["app1", "app2", "db1", "db2"]
    public_subnet_names = ["nopCommerce1", "nopCommerce2"]
  }
}