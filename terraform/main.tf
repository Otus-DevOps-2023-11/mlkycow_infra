terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}


provider "yandex" {
  token = "y0_AgAAAABzhbGEAATuwQAAAAD5QksDAAAiJEL2WFhEUL-FfsuB5hnIL0T1pg"
  cloud_id = "b1gf7tfgqmq6e1sqa4u4"
  folder_id = "b1g36pr10f95b2irvqck"
  zone = "ru-central1-a"
}

resource "yandex_compute_instance" "app" {
  name = "reddit-app"
  resources {
    cores = 2
    memory = 2
}

  provisioner "file" {
    source = "files/puma.service"
    destination = "/tmp/puma.service"
}

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/appuser.pub")}"
}
  boot_disk {
    initialize_params {
# Указать id образа созданного в предыдущем домашнем задании
   image_id = "fd85jf27ie4dcc6232mv"}
}

  network_interface {
# Указан id подсети default-ru-central1-a
    subnet_id = "e9bhkneprjbvqmc7sgof"
    nat = true}
}
