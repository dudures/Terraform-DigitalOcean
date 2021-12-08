terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}

variable "do_token" {
  type        = string
  description = ""

}
variable "pvt_key" {
  type        = string
  description = ""

}

provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_ssh_key" "ubuntu" {
  name = "ubuntu"
}