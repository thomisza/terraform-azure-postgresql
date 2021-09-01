variable "azure_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource in Azure (default: 'eastus', less expensive location)"
}

variable "azure_tenant_id" {
  type        = string
  description = "Azure tenant id"
}

variable "application_full_name" {
  type        = string
  description = "Name of your project, application, product or service."
}

variable "application_short_name" {
  type        = string
  description = "Short name of your application using abbreviations or acronyms."
  validation {
    condition     = can(regex("^\\w+$", var.application_short_name))
    error_message = "Application short name can only consist of letters and numbers."
  }
}

variable "application_environment" {
  type        = string
  default     = "prod"
  description = "Name of the environment (example: dev, test, prod, ...)"
}

variable "rg_name" {
  type        = string
  description = "Name of the Ressource Group in which this ressource will be"
}

variable "psql_server_version" {
  type        = string
  description = "Major version of postgresql (exemple: 10 or 11)."
  default     = "11"
}

variable "psql_server_purpose" {
  type        = string
  description = "Usage of this database (example: customer, data, ...)."
  default     = ""
  validation {
    condition     = length(var.psql_server_purpose) == 0 || can(regex("^\\w+$", var.psql_server_purpose))
    error_message = "Purpose can only consist of lowercase letters and numbers."
  }
}

variable "psql_server_administrators" {
  type        = list(string)
  default     = []
  description = "Administrators must be User Princpals or Managed identities. A Service Principal is not allowed."
}

variable "psql_server_users" {
  type        = list(string)
  default     = []
  description = "Users must be User Princpals or Managed identities. A Service Principal is not allowed."
}

variable "database_name" {
  type        = set(string)
  default     = ["appdb"]
  description = "Name of the database (example: customer, product, ...)."
}
