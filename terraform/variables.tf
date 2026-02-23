variable "prefix" {
	type = string
	default = "tp-azure"
}

variable "nsg_rules" {
  description = "Règles de sécurité pour le NSG"
  type = map(object({
    priority = number
    port     = string
    protocol = string
    access   = string
  }))
  default = {
    allow-ssh = {
      priority = 100
      port     = "22"
      protocol = "Tcp"
      access   = "Allow"
    }
    allow-http = {
      priority = 200
      port     = "80"
      protocol = "Tcp"
      access   = "Allow"
    }
    deny-all-inbound = {
      priority = 4096
      port     = "*"
      protocol = "*"
      access   = "Deny"
    }
  }
}

variable "location" {
	type = string
	default = "France Central"
}