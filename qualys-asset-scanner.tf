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
resource "google_compute_instance" "qualys-asset-scanner" {
  name         = var.vm_name
  machine_type = var.vm_size

  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }

  metadata = {
    PERSCODE                 = var.perscode
    PROXY_URL                = var.proxy_url
    google-monitoring-enable = var.gcp_monitoring
    google-logging-enable    = var.gcp_logging
  }

  network_interface {
    subnetwork = var.subnet_name
    network_ip = var.network_ip
  }
}
