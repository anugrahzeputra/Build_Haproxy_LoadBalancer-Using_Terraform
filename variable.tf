variable "web_1" {
  default = "YOURNAME-WEBSERVER-01"
}

variable "web_2" {
  default = "YOURNAME-WEBSERVER-02"
}

variable "haproxy_name"{
  default = "YOURNAME-HAPROXY"
}

variable "image_1" {
  default = "ubuntu-18.04-server-cloudimg-amd64"
}

variable "image_2" {
  default = "CentOS-7-x86_64-GenericCloud-1802.qcow2"
}

variable "flavor" {
  default = "ns.2-2-20"
}

variable "keypair" {
  default = "keypair"
}

variable "private_key_path" {
  default = "file/id_rsa"
}

variable "network" {
  default = "58f3fc69-2cad-4497-bfd8-12125da5bd77"
}

variable "haproxy_ip" {
  default = "10.36.36.50"
}

variable "web_1_ip" {
  default = "10.36.36.51"
}

variable "web_2_ip" {
  default = "10.36.36.52"
}

