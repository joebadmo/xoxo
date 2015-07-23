provider "digitalocean" {
    token = "${var.token}"
}

resource "digitalocean_droplet" "xoxo" {
    image = "ubuntu-14-10-x64"
    name = "xoxo2"
    region = "sfo1"
    size = "1gb"
    ssh_keys = ["22490"]
    provisioner "local-exec" {
        command = "echo ${digitalocean_droplet.xoxo.ipv4_address} > ansible_hosts; sleep 60; ansible-playbook xoxo.yml -vvvv"
    }
}
