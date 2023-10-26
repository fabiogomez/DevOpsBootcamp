variable "resource_group_name" {
  type = string

}
variable "location" {
  type    = string
  default = "West Europe"

}
variable "storageaccountname" {
  type = string
}
variable "account_tier" {
  type = string
}
variable "account_replication_type" {
  type = string
}
variable "environment" {
  type = string
}

variable "tags" {
  type    = object({})
}
