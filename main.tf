terraform {
  backend "local" {
    path = ".terraform.tfstate"
  }
  required_providers {
    mgc = {
      source = "registry.terraform.io/magalucloud/mgc"
    }
  }
}

provider "mgc" {
  region = "br-se1"
}

resource "mgc_ssh_keys" "gabriel_key" {
  name = "chave-do-gabriel"
  key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDci4wJghnRRSqQuX1z2xeaUR+p/muKzac0jw0mgpXE2T/3iVlMJJ3UXJ+tIbySP6ezt0GVmzejNOvUarPAm0tOcW6W0Ejys2Tj+HBRU19rcnUtf4vsKk8r5PW5MnwS8DqZonP5eEbhW2OrX5ZsVyDT+Bqrf39p3kOyWYLXT2wA7y928g8FcXOZjwjTaWGWtA+BxAvbJgXhU9cl/y45kF69rfmc3uOQmeXpKNyOlTk6ipSrOfJkcHgNFFeLnxhJ7rYxpoXnxbObGhaNqn7gc5mt+ek+fwFzZ8j6QSKFsPr0NzwTFG80IbyiyrnC/MeRNh7SQFPAESIEP8LK3PoNx2l1M+MjCQXsb4oIG2oYYMRa2yx8qZ3npUOzMYOkJFY1uI/UEE/j/PlQSzMHfpmWus4o2sijfr8OmVPGeoU/UnVPyINqHhyAd1d3Iji3y3LMVemHtp5wVcuswABC7IRVVKZYrMCXMiycY5n00ch6XTaXBwCY00y8B3Mzkd7Ofq98YHc= hi@m7.rs"
}

resource "mgc_virtual_machine_instances" "jenkins_master" {
  name = "jenkins"
  name_is_prefix = true
  machine_type = {
    name = "BV2-8-40"
  }
  image = {
    name = "cloud-debian-12 LTS"
  }
  network = {
    associate_public_ip = true
  }
  ssh_key_name = mgc_ssh_keys.key.name
}

output "ip" {
  value = mgc_virtual_machine_instances.jenkins_master.network.public_address
}

module "deploy" {
  source                 = "github.com/nix-community/nixos-anywhere//terraform/all-in-one"
  nixos_system_attr      = ".#nixosConfigurations.master.config.system.build.toplevel"
  nixos_partitioner_attr = ".#nixosConfigurations.master.config.system.build.diskoScript"
  special_args = {
    terraformArgs = {
      authorizedKeys = [mgc_ssh_keys.gabriel_key.key]
    }
  }
  extra_files_script = "${path.module}/scripts/decrypt-secrets.sh"
  extra_environment = {
    SECRETS = "jenkins-gabriel-password"
  }

  instance_id  = mgc_virtual_machine_instances.jenkins_master.id
  target_host  = mgc_virtual_machine_instances.jenkins_master.network.public_address
  install_user = "debian"
}
