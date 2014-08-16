provider "digitalocean" {
    token = "${var.token}"
}

resource "digitalocean_droplet" "xoxo" {
    image = "docker"
    name = "xoxo"
    region = "sfo1"
    size = "512mb"
    ssh_keys = ["236516"]
}
