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
