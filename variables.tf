variable "namespace" {
  type        = string
  description = "namespace"
}
variable "stage" {
  type        = string
  description = "environment"
}
variable "name" {
  type        = string
  description = "name of the cdn"
}
variable "aliases" {
  type        = list(string)
  description = "aliases"
}
variable "parent_zone_name" {
  type        = string
  description = "parent_zone_name"
}