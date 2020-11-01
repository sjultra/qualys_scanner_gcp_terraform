/*
   Copyright 2020 SJULTRA, inc.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/
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
  default = "n1-standard-1"
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
