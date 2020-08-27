variable "service_account_secret" {
  default = ""
}

variable "gcp_project_id" {
  default = ""
}

variable "resources_region" {
  default = ""
}

variable "resources_zone" {
  default = ""
}

variable "vm_name" {
  default = "Qualys Scanner GCP Terraform"
}

variable "vm_size" {
  default = "f1-micro"
}

variable "vm_image" {
  default = "/projects/qualys-gcp-security/global/images/qvsa-gce-2-5-36-1"
}

variable "perscode" {
  default = ""
}

variable "subnet_name" {
  default = ""
}

variable "network_ip" {
  default = ""
}

variable "proxy_url" {
  default = ""
}
variable "gcp_monitoring" {
  default = "0"
}
variable "gcp_logging" {
  default = "0"
}