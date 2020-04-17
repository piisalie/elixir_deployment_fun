variable "do_token" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token

}

resource "digitalocean_droplet" "example_app" {
  image  = "ubuntu-18-04-x64"
  name   = "web-1"
  region = "nyc2"
  size   = "s-1vcpu-1gb"
  user_data = templatefile("./cloud_init.tpl", {})
}



