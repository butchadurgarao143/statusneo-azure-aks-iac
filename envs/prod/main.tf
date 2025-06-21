module "aks" {
  source              = "../../modules/aks"
  name                = "alpheya-prod-aks"
  location            = "eastus"
  resource_group_name = "alpheya-tfstate-rg"
  dns_prefix          = "alpheya-prod"
  node_count          = 1
  tags = {
    environment = "prod"
  }
}
