variable "cloud_id" {
  description = "Cloud"
}

variable "folder_id" {
  description = "Folder"
}

variable "zone" {
  description = "Зона размещения ресурса"
  # Значение по умолчанию
  default = "ru-central1-a"
}

variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}

variable "private_key_path" {
  # Описание переменной
  description = "Path to the private key used for ssh access"
}

variable "image_id" {
  description = "Disk image"
}

variable "subnet_id" {
  description = "Subnet"
}

variable "service_account_key_file" {
  description = "key.json"
  default = "key.json"
}

variable "instance_app_zone" {
  description = "Зона публикации ресурса"
  default     = "ru-central1-a"
}

variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "fd81fcfur6l5qii28mki"
}

variable "db_disk_image" {
  description = "Disk image for reddit app"
  default     = "fd8m4s4n9jerg40f64gd"
}
