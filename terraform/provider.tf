provider "azurerm" {
  version = "=2.0.0"
  features {}
}

provider "secrethub" {
  credential = file("~/.secrethub/credential")
}

