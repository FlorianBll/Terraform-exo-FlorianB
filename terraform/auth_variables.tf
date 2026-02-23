variable "admin_password" {
  description = "Le mot de passe administrateur pour les machines virtuelles"
  type        = string
  sensitive   = true

  validation {
    condition     = length(var.admin_password) >= 8 && can(regex("[A-Z]", var.admin_password)) && can(regex("[a-z]", var.admin_password)) && can(regex("[0-9]", var.admin_password)) && can(regex("[^a-zA-Z0-9_]", var.admin_password))
    error_message = "Le mot de passe doit contenir au moins 8 caractères, une majuscule, une minuscule, un chiffre et un caractère spécial (autre que '_')."
  }
}