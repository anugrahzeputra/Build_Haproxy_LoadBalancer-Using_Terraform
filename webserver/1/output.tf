output "web_1_name" {
  value       = "${openstack_compute_instance_v2.instance.*.name}"
  description = "openstack instance name"
}

output "web_1_floating_ip" {
  value       = "${openstack_networking_floatingip_v2.floating_ip.*.address}"
  description = "openstack instance floating ip"
}

