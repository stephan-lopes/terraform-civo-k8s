terraform {
  required_providers {
    civo = {
      source  = "civo/civo"
      version = "1.1.2"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

provider "civo" {
  region = "nyc1"
}
