resource "civo_network" "this" {
  label = "study-network"

}

resource "civo_firewall" "this" {
  name                 = "study-firewall"
  network_id           = civo_network.this.id
  create_default_rules = true
}


resource "civo_kubernetes_cluster" "this" {
  name               = "study-cluster"
  network_id         = civo_network.this.id
  firewall_id        = civo_firewall.this.id
  kubernetes_version = "1.28.7-k3s1"
  pools {
    size       = "g4s.kube.xsmall"
    node_count = 3
  }
}

