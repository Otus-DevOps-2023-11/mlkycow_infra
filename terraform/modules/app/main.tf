resource "yandex_compute_instance" "app" {
  name        = "reddit-app"
  allow_stopping_for_update = true
  platform_id = "standard-v2"
  zone        = var.instance_app_zone

  resources {
    cores  = 2
    memory = 2
  }

  connection {
    type  = "ssh"
    host  = yandex_compute_instance.app.network_interface.0.nat_ip_address
    user  = "ubuntu"
    agent = false
    # путь до приватного ключа
    private_key = file(var.private_key_path)
  }

#  provisioner "file" {
#    source      = "files/puma.service"
#    destination = "/tmp/puma.service"
#  }

#  provisioner "remote-exec" {
#    script = "files/deploy.sh"
#  }


  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

  boot_disk {
    initialize_params {
      image_id = var.app_disk_image
    }

  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }
}
