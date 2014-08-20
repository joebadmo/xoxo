provider "digitalocean" {
    token = "${var.token}"
}

resource "digitalocean_droplet" "xoxo" {
    image = "docker"
    name = "xoxo"
    region = "sfo1"
    size = "512mb"
    ssh_keys = ["22490"]
    provisioner "local-exec" {
        command = "echo ${digitalocean_droplet.xoxo.ipv4_address} > ansible_hosts; sleep 30; ansible-playbook playbook.yml -vvvv"
    }
}
