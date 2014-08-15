provider "digitalocean" {
    token = "${var.token}"
}

resource "digitalocean_droplet" "xoxo" {
    image = "5506141"
    name = "xoxo"
    region = "sfo1"
    size = "512mb"
    ssh_keys = [236516]
}
