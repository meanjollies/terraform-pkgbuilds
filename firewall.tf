resource "linode_firewall" "jenkins-firewall" {
  label = "jenkins-firewall"

  inbound {
    label    = "allow-ssh"
    action   = "ACCEPT"
    protocol = "TCP"
    ports    = "22,8090"
    ipv4     = var.jenkins_addr_whitelist
  }

  inbound_policy  = "DROP"
  outbound_policy = "ACCEPT"

  linodes = concat(linode_instance.jenkins-agents.*.id, linode_instance.jenkins-controller.*.id)
}
