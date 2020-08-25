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

variable "PERSCODE" {
  default = ""
}

variable "subnet_name" {
  default = ""
}

variable "network_IP" {
  default = ""
}

variable "PROXY_URL" {
  default = ""
}
variable "GCPMONITORING" {
  default = "0"
}
variable "GCPLOGGING" {
  default = "0"
}