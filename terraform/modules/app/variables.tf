variable "public_key_path" {
  description = "Путь к публичному ключу ssh"
  default     = "/home/fmv/.ssh/appuser.pub"
}

variable "private_key_path" {
  description = "Путь к приватному ключу для ssh"
  default = "/home/fmv/.ssh/appuser"
}

variable "folder_id" {
  description = "Папка для создания ресурсов"
  type        = string
  default = "b1g36pr10f95b2irvqck"
}

variable "subnet_id" {
  description = "Subnet"
  default = "e9bhkneprjbvqmc7sgof"
}

variable "instance_app_zone" {
  description = "Зона размещения инстанса"
  default     = "ru-central1-a"
}

variable "app_disk_image" {
  description = "Образ диска для приложения"
  default     = "fd8rji5s4sbkmudu0d4p"
}

variable "service_account_key_file" {
  description = "Сервисный аакаунт яндекс облака"
  default = "key.json"
}

variable "cloud_id" {
  description = "ID Яндекс облака"
  default = "b1gf7tfgqmq6e1sqa4u4"
}
