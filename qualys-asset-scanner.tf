resource "google_compute_instance" "qualys-asset-scanner" {
  name         = var.vm_name
  machine_type = var.vm_size

  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }
  
  metadata = {
    PERSCODE= var.PERSCODE
    PROXY_URL=var.PROXY_URL
    google-monitoring-enable=var.GCPMONITORING
    google-logging-enable=var.GCPLOGGING
  }

  network_interface {
    subnetwork = var.subnet_name
    network_ip = var.networkIP
  }
}


