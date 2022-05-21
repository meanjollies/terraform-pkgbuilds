resource "linode_instance" "jenkins-controller" {
  image           = var.jenkins_image
  label           = "jenkins-controller1"
  region          = var.region
  type            = var.jenkins_controller_type
  authorized_keys = [var.authorized_keys]
}

resource "linode_instance" "jenkins-agents" {
  image           = var.jenkins_image
  count           = var.jenkins_agent_count
  label           = "jenkins-agent${count.index + 1}"
  region          = var.region
  type            = var.jenkins_agent_type
  authorized_keys = [var.authorized_keys]
}
