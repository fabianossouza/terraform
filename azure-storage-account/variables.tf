variable "location" {
  description = "regiao onde sera criados recursos"
  type = string
  default = "Brazil South"
}

variable "access_tier" {
  description = "tier storage account azure"
  type = string
  default = "Standard"
}

variable "account_replication_type" {
  description = "tipo de replicacao de dados storage account"
  type = string
  default = "LRS"
  sensitive = true
}