module "aci_imported_contract" {
  source = "netascode/imported_contract/aci"

  tenant        = "ABC"
  name          = "CON1"
  contract      = "CON1"
  tenant_source = "DEF"
}
