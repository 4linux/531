variable "vm_size" {
  type = map(string)
  default = {
    prod = "e2-medium"
    dev  = "e2-small"
  }
}