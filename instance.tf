module "webserver_1" {
  source               = "./webserver/1"
  instance_name        = "${var.web_1}"
  instance_flavor      = "${var.flavor}"
  instance_image       = "${var.image_1}"
  instance_keypair     = "${var.keypair}"
  network_id           = "${var.network}"
  private_key_path     = "${var.private_key_path}"
  instance_int_address = "${var.web_1_ip}"
}

module "webserver_2" {
  source               = "./webserver/2"
  instance_name        = "${var.web_2}"
  instance_flavor      = "${var.flavor}"
  instance_image       = "${var.image_2}"
  instance_keypair     = "${var.keypair}"
  network_id           = "${var.network}"
  private_key_path     = "${var.private_key_path}"
  instance_int_address = "${var.web_2_ip}"
}

module "haproxy" {
  source               = "./haproxy"
  instance_name        = "${var.haproxy_name}"
  instance_flavor      = "${var.flavor}"
  instance_image       = "${var.image_1}"
  instance_keypair     = "${var.keypair}"
  network_id           = "${var.network}"
  private_key_path     = "${var.private_key_path}"
  instance_int_address = "${var.haproxy_ip}"
}

output "web_1_name" {
  value       = "${module.webserver_1.web_1_name}"
  description = "openstack instance name"
}

output "web_1_floating_ip" {
  value       = "${module.webserver_1.web_1_floating_ip}"
  description = "openstack instance floating ip"
}

output "web_2_name" {
  value       = "${module.webserver_2.web_2_name}"
  description = "openstack instance name"
}

output "web_2_floating_ip" {
  value       = "${module.webserver_2.web_2_floating_ip}"
  description = "openstack instance floating ip"
}

output "haproxy_name" {
  value       = "${module.haproxy.haproxy_name}"
  description = "openstack instance name"
}

output "haproxy_floating_ip" {
  value       = "${module.haproxy.haproxy_floating_ip}"
  description = "openstack instance floating ip"
}

