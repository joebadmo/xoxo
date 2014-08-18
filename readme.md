# terraform

plan (optional):

    $ terraform plan

apply:

    $ terraform apply

`ansible_hosts`:

    $ terraform show terraform.tfstate | grep ip | cut -d ' ' -f 5 > ansible_hosts

destroy:

    $ terraform plan -destroy -out terraform.tfplan; terraform apply terraform.tfplan

# ansible

    $ ansible-playbook playbook.yml
