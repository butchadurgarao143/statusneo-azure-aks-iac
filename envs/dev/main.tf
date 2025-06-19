module "aks" {
  source              = "../../modules/aks"
  name                = "alpheya-dev-aks"
  location            = "centralus"
  resource_group_name = "alpheya-tfstate-rg"
  dns_prefix          = "alpheya-dev"
  node_count          = 2
  tags = {
    environment = "dev"
  }
}
