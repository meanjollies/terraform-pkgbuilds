variable "linode_api_token" {
  type        = string
  description = "Linode API token. Nothing to see here, gtfo"
}

variable "jenkins_image" {
  type        = string
  description = "OS image to deploy from"
}

variable "region" {
  type        = string
  description = "Where the instance will be deployed"
}

variable "jenkins_controller_type" {
  type        = string
  description = "Instance type for the Jenkins controller"
}

variable "jenkins_agent_type" {
  type        = string
  description = "Instance type for the Jenkins agents"
}

variable "authorized_keys" {
  type        = string
  description = "Public key authorized to SSH into instances"
}

variable "jenkins_agent_count" {
  type        = string
  description = "Number of Jenkins agents to deploy"
}

variable "jenkins_addr_whitelist" {
  type        = list(string)
  description = "A list of addresses allowed to access Jenkins' resources"
}
